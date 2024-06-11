part of 'hsp.dart';

enum Gender { male, female, common }

extension GenderX on Gender {
  String? get text => switch (this) {
        Gender.male => "Male",
        Gender.female => "Female",
        _ => "Common",
      };
}
