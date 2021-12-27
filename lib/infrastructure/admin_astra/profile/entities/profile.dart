import 'package:equatable/equatable.dart';

enum Gender { male, female }

class Profile extends Equatable {
  String? phoneNumber;
  String? firstName;
  String? lastName;
  Gender? gender;
  int? age;
  int?height;
  int? status;
  bool? haveChild;
  String? country;
  String? city;

  Profile(
      {required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.age,
      required this.city,
      required this.country,
      required this.gender,
      required this.haveChild,
      required this.height,
      required this.status});

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        age,
        phoneNumber,
        city,
        country,
        gender,
        haveChild,
        height,
        status
      ];
  Map<String, dynamic> toMap() {
    return {
      'phone_number': phoneNumber,
      'firstname': firstName,
      'lastname': lastName,
      'gender': gender,
      'age': age,
      'height': height,
      'status': status,
      'have_child': haveChild,
      'country': country,
      'city': city,
    };
  }

  Profile.fromObject(dynamic o) {
    phoneNumber = o['phone_number'];
    firstName = o['firstname'];
    lastName = o['lastname'];
    gender = o['gender'];
    age = o['age'];
    height = o['height'];
    status = o['status'];
    haveChild = o['have_child'];
    country = o['country'];
    city = o['city'];
  }
}
