
import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("Weather")
class Weathers extends Table {

  IntColumn get id => integer().autoIncrement()();
  RealColumn get temperature => real()();
  TextColumn get applicableDate => text()();
  TextColumn get dayPointer => text()();
  TextColumn get weatherStateAbbr => text()();

}