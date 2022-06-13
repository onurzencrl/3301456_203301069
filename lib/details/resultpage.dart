import 'package:flutter/material.dart';
import 'package:intro2/details/aboutvocabulary.dart';
import 'package:intro2/details/vocabulary.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ResultPage extends StatefulWidget {
  int dogruSayisi;

  ResultPage({Key? key, required this.dogruSayisi}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${widget.dogruSayisi} DOĞRU ${4 - widget.dogruSayisi} YANLIŞ",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "% ${((widget.dogruSayisi * 100) / 4).toInt()} Başarı  ",
              style: TextStyle(fontSize: 30, color: Colors.pink),
            ),
            SfCircularChart(
              title: ChartTitle(
                  text:
                      'Doğru-Yanlış Yüzde Grafiği \n (type of Circular Chart)'),
              legend: Legend(
                  isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                RadialBarSeries<GDPData, String>(
                    dataSource: _chartData,
                    xValueMapper: (GDPData data, _) => data.continent,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true,
                    maximumValue: 100)
              ],
            ),
            ElevatedButton(
              child: Text('AnaSayfaya Dön'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                onPrimary: Colors.white,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VocabularyDetay()));
              },
            ),
          ],
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Doğru Yüzdesi', widget.dogruSayisi * 25),
      GDPData('Yanlış Yüzdesi', 100 - (widget.dogruSayisi * 25)),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
