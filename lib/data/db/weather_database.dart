import 'dart:io';

import 'package:moor_ffi/moor_ffi.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:taweather/data/db/tables/weather_table.dart';

part 'weather_database.g.dart';

@UseMoor(tables: [Weathers])
class WeatherDatabase extends _$WeatherDatabase {

  WeatherDatabase() : super(_openConnection());

  Future<Weather> getWeatherItemByPointer(String pointer) {
    return (select(weathers)..where((tbl) => tbl.dayPointer.equals(pointer))).watchSingle().first;
  }

  Future<void> clearDatabase() async {
    return await delete(weathers).go();
  }

  Future<int> insertWeather(Weather weather) async {
    return await into(weathers).insert(weather);
  }

  Future<int> itemsCount() async {
    return (await select(weathers).get()).length;
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}