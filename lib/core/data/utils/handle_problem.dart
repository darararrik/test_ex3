import 'package:talker_flutter/talker_flutter.dart';

void handleProblem(dynamic problem, Talker talker) {
  if (problem == null) return;
  final typename = problem.$__typename;

  switch (typename) {
    case 'EmailAlreadyUsedProblem':
      talker.error(typename);
      throw Exception("Email already used");
    case 'PhoneAlreadyUsedProblem':
      talker.error(typename);
      throw Exception("Phone already used");
    case 'EmailOrPasswordIncorrectProblem':
      talker.error(typename);
      throw Exception("Email or password incorrect");

    default:
      talker.error(typename);
      throw Exception("Unkown Problem");
  }
}
