import 'package:hive/hive.dart';
import '../utils/hsp.dart';

part 'person.g.dart';

@HiveType(typeId: 0)
class Person {
  @HiveField(0)
  String? name;
  @HiveField(1)
  int? age;
  @HiveField(2)
  DateTime? dateOfBirth;
  @HiveField(3)
  double? height;
  @HiveField(4)
  double? weight;
  @HiveField(5)
  Gender? gender;

  Person(
    this.name,
    this.age,
    this.dateOfBirth,
    this.height,
    this.weight,
    this.gender,
  );
}
