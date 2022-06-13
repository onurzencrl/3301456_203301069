import 'package:intro2/sqlitepages/animals.dart';
import 'package:intro2/sqlitepages/veri_tabani_yardimcisi.dart';

class Bayraklardao {
  Future<List<Animals>> rastgele5Getir() async {
    var db = await VeriTabaniYardimcisi.veriTabaniErisim();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM hayvanlar ORDER BY RANDOM() LIMIT 4 ");
    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Animals(
          satir["animal_id"], satir["animal_name"], satir["animal_picture"]);
    });
  }

  Future<List<Animals>> rastgele3Getir(int animal_id) async {
    var db = await VeriTabaniYardimcisi.veriTabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery(
        "SELECT * FROM hayvanlar WHERE animal_id != $animal_id ORDER BY RANDOM() LIMIT 3 ");
    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Animals(
          satir["animal_id"], satir["animal_name"], satir["animal_picture"]);
    });
  }
}
