import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';

class BasicHive {
  /*<<----------->> constructor <<----------->>*/
  BasicHive() {
    _openHiveBox();
  }

  /*<<----------->> keys <<----------->>*/
  final _openBox01 = "_open_box_01_";
  final _refBox01 = "_ref_box_01_";
  final _name = "_name_";
  final _fullName = "_full_name_";
  final _age = "_age_";
  final _height = "_height_";
  final _weight = "_weight_";

  /*<<----------->> values <<----------->>*/
  late dynamic _openBox;
  late dynamic _refBox;

  /*<<----------->> init hive <<----------->>*/
  void _openHiveBox() async {
    _openBox = await Hive.openBox(_openBox01);
    _refBox = Hive.box(_openBox01);
  }

  /*<<----------->> setup values <<----------->>*/
  Future<void> setupValues() async {
    await _refBox.put(_name, "Monirul");
    await _refBox.put(_fullName, ["MD", "Monirul", "Islam"]);
    await _refBox.putAll({
      _age: 24,
      _height: 5.11,
      _weight: 70,
    });
  }

  /*<<----------->> print values <<----------->>*/
  Future<void> printValues() async {
    debugPrint("Name ---> ${await _refBox.get(_name)}");
    debugPrint("Full Name ---> ${await _refBox.get(_fullName)[1]}");
    debugPrint("Full Name ---> ${await _refBox.get(_age)}");
    debugPrint("All Values ---> ${await _refBox.values}");
    debugPrint("All Keys ---> ${await _refBox.keys}");
  }
}
