import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Gorevlerim extends StatefulWidget {
  const Gorevlerim({Key? key}) : super(key: key);

  @override
  State<Gorevlerim> createState() => _GorevlerimState();
}

class _GorevlerimState extends State<Gorevlerim> {
  DatePickerController _controller = DatePickerController();
  late String texttim = ' ';

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'GÜNLÜK GÖREVLERİM',
              style: TextStyle(
                  fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              child: DatePicker(
            DateTime.now(),
            width: 60,
            height: 80,
            controller: _controller,
            initialSelectedDate: DateTime.now(),
            selectionColor: Color(0xFF363f93),
            selectedTextColor: Colors.white,
            inactiveDates: [],
            onDateChange: (date) {
              // New date selected
              setState(() {
                _selectedValue = date;
                if (_selectedValue.day % 2 == 0) {
                  texttim = '2 İngilizce metin oku.';
                } else {
                  texttim = '1 İngilizce metin oku';
                }
              });
            },
          )),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFF363f93),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                              Text('09:00 a.m.'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF363f93),
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    height: 10,
                                    width: 10,
                                  ),
                                ),
                                Text(
                                  '10:00 a.m.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Text(
                            texttim,
                            style: TextStyle(
                                fontSize: 14.0, fontFamily: 'Comfortaa'),
                          ),
                        ),
                        width: 280,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 196, 212, 218),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFF363f93),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                              Text('13:00 a.m.'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF363f93),
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    height: 10,
                                    width: 10,
                                  ),
                                ),
                                Text('14:00 a.m.'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Text(
                            texttim,
                            style: TextStyle(
                                fontSize: 14.0, fontFamily: 'Comfortaa'),
                          ),
                        ),
                        width: 280,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 196, 212, 218),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFF363f93),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                              Text('17:00 a.m.'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF363f93),
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    height: 10,
                                    width: 10,
                                  ),
                                ),
                                Text('18:00 a.m.'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Text(
                            texttim,
                            style: TextStyle(
                                fontSize: 14.0, fontFamily: 'Comfortaa'),
                          ),
                        ),
                        width: 280,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 196, 212, 218),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFF363f93),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                              Text('21:00 a.m.'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF363f93),
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    height: 10,
                                    width: 10,
                                  ),
                                ),
                                Text('22:00 a.m.'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Text(
                            texttim,
                            style: TextStyle(
                                fontSize: 14.0, fontFamily: 'Comfortaa'),
                          ),
                        ),
                        width: 280,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 196, 212, 218),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
