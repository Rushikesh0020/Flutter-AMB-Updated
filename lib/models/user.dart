import 'package:meta/meta.dart';

// Response body: {"id":1,"userId":1,"samay404AM":false,"samay505AM":false,"samay606AM":false,"samay707AM":false,
// "samay808AM":true,"samay909AM":false,"samay1010AM":false,"samay1111AM":false,"samay1212PM":false,"samay101PM":false,
// "samay202PM":true,"samay303PM":false,"samay404PM":true,"samay505PM":false,"samay606PM":false,"samay707PM":false,
// "samay808PM":true,"samay909PM":true,"samay1010PM":false,"samay1111PM":false,"samay1212AM":false}


class User {
  final int id;
  final int userId;
  final bool samay404AM;
  final bool samay505AM;
  final bool samay606AM;
  final bool samay707AM;
  final bool samay808AM;
  final bool samay909AM;
  final bool samay1010AM;
  final bool samay1111AM;
  final bool samay1212PM;
  final bool samay101PM;
  final bool samay202PM;
  final bool samay303PM;
  final bool samay404PM;
  final bool samay505PM;
  final bool samay606PM;
  final bool samay707PM;
  final bool samay808PM;
  final bool samay909PM;
  final bool samay1010PM;
  final bool samay1111PM;
  final bool samay1212AM;

  const User(
      {required this.id,
      required this.userId,
      required this.samay404AM,
      required this.samay505AM,
      required this.samay606AM,
      required this.samay707AM,
      required this.samay808AM,
      required this.samay909AM,
      required this.samay1010AM,
      required this.samay1111AM,
      required this.samay1212PM,
      required this.samay101PM,
      required this.samay202PM,
      required this.samay303PM,
      required this.samay404PM,
      required this.samay505PM,
      required this.samay606PM,
      required this.samay707PM,
      required this.samay808PM,
      required this.samay909PM,
      required this.samay1010PM,
      required this.samay1111PM,
      required this.samay1212AM});

  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        userId: json['userId'],
        samay404AM: json['samay404AM'],
        samay505AM: json['samay505AM'],
        samay606AM: json['samay606AM'],
        samay707AM: json['samay707AM'],
        samay808AM: json['samay808AM'],
        samay909AM: json['samay909AM'],
        samay1010AM: json['samay1010AM'],
        samay1111AM: json['samay1111AM'],
        samay1212PM: json['samay1212PM'],
        samay101PM: json['samay101PM'],
        samay202PM: json['samay202PM'],
        samay303PM: json['samay303PM'],
        samay404PM: json['samay404PM'],
        samay505PM: json['samay505PM'],
        samay606PM: json['samay606PM'],
        samay707PM: json['samay707PM'],
        samay808PM: json['samay808PM'],
        samay909PM: json['samay909PM'],
        samay1010PM: json['samay1010PM'],
        samay1111PM: json['samay1111PM'],
        samay1212AM: json['samay1212AM'],
        // username: json['username'],
        // email: json['email'],
        // urlAvatar: json['urlAvatar'],
      );
}
