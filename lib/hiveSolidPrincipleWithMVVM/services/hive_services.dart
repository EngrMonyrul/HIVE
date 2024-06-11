part of '../utils/hsp.dart';

/// ### Hive Services
/// *__This Hive Service Is Used To Store Data In Device__*
///
/// __Setter__
/// * [addPerson]
/// * [deleteAllPerson]
/// * [updatePerson]
///
/// __Getter__
/// * [box]
/// * [allPerson]
abstract class HiveServices {
  /*<<----------->> keys <<----------->>*/
  final _openBox = "_open_box_";

  /*<<----------->> init methods <<----------->>*/

  /// initializing hive
  Future<void> _init();

  /*<<----------->> getter methods <<----------->>*/

  /// get box of person
  Box<Person> get box => Hive.box<Person>(_openBox);

  /// get all persons in box
  List<Person> get allPerson => box.values.toList();

  /*<<----------->> setter methods <<----------->>*/

  /// set person in box
  Future<void> addPerson({required Person person});

  /// delete person from box
  Future<void> deleteAllPerson();

  /// update person in box
  Future<void> updatePerson({required Person person, required int index});

  /// close box
  Future<void> closeBox();
}
