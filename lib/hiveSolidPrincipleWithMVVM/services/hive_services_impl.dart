part of '../utils/hsp.dart';

class _HiveServiceImpl extends HiveServices {
  _HiveServiceImpl() {
    _init();
  }

  @override
  Future<void> _init() async {
    await Hive.initFlutter("LocalStorage");
    Hive.registerAdapter(PersonAdapter());
    await Hive.openBox<Person>(_openBox);
  }

  @override
  Future<void> addPerson({required Person person}) async {
    await box.add(person);
  }

  @override
  Future<void> closeBox() async {
    await box.close();
  }

  @override
  Future<void> deleteAllPerson() async {
    await box.deleteAll(allPerson);
  }

  @override
  Future<void> updatePerson(
      {required Person person, required int index}) async {
    await box.putAt(index, person);
  }
}
