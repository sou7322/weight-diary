import 'package:uuid/uuid.dart';

const uuid = Uuid();

class User {
  String id;
  final double height;
  final String name;
  final double targetWeight;

  User(this.height, this.name, this.targetWeight) : id = uuid.v4();
}
