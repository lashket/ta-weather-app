// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class weather extends DataClass implements Insertable<weather> {
  final int id;
  final double temperature;
  final String applicableDate;
  final String dayPointer;
  final String weatherStateAbbr;
  weather(
      {@required this.id,
      @required this.temperature,
      @required this.applicableDate,
      @required this.dayPointer,
      @required this.weatherStateAbbr});
  factory weather.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    final stringType = db.typeSystem.forDartType<String>();
    return weather(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      temperature: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}temperature']),
      applicableDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}applicable_date']),
      dayPointer: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}day_pointer']),
      weatherStateAbbr: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}weather_state_abbr']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || temperature != null) {
      map['temperature'] = Variable<double>(temperature);
    }
    if (!nullToAbsent || applicableDate != null) {
      map['applicable_date'] = Variable<String>(applicableDate);
    }
    if (!nullToAbsent || dayPointer != null) {
      map['day_pointer'] = Variable<String>(dayPointer);
    }
    if (!nullToAbsent || weatherStateAbbr != null) {
      map['weather_state_abbr'] = Variable<String>(weatherStateAbbr);
    }
    return map;
  }

  WeathersCompanion toCompanion(bool nullToAbsent) {
    return WeathersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      temperature: temperature == null && nullToAbsent
          ? const Value.absent()
          : Value(temperature),
      applicableDate: applicableDate == null && nullToAbsent
          ? const Value.absent()
          : Value(applicableDate),
      dayPointer: dayPointer == null && nullToAbsent
          ? const Value.absent()
          : Value(dayPointer),
      weatherStateAbbr: weatherStateAbbr == null && nullToAbsent
          ? const Value.absent()
          : Value(weatherStateAbbr),
    );
  }

  factory weather.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return weather(
      id: serializer.fromJson<int>(json['id']),
      temperature: serializer.fromJson<double>(json['temperature']),
      applicableDate: serializer.fromJson<String>(json['applicableDate']),
      dayPointer: serializer.fromJson<String>(json['dayPointer']),
      weatherStateAbbr: serializer.fromJson<String>(json['weatherStateAbbr']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'temperature': serializer.toJson<double>(temperature),
      'applicableDate': serializer.toJson<String>(applicableDate),
      'dayPointer': serializer.toJson<String>(dayPointer),
      'weatherStateAbbr': serializer.toJson<String>(weatherStateAbbr),
    };
  }

  weather copyWith(
          {int id,
          double temperature,
          String applicableDate,
          String dayPointer,
          String weatherStateAbbr}) =>
      weather(
        id: id ?? this.id,
        temperature: temperature ?? this.temperature,
        applicableDate: applicableDate ?? this.applicableDate,
        dayPointer: dayPointer ?? this.dayPointer,
        weatherStateAbbr: weatherStateAbbr ?? this.weatherStateAbbr,
      );
  @override
  String toString() {
    return (StringBuffer('weather(')
          ..write('id: $id, ')
          ..write('temperature: $temperature, ')
          ..write('applicableDate: $applicableDate, ')
          ..write('dayPointer: $dayPointer, ')
          ..write('weatherStateAbbr: $weatherStateAbbr')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          temperature.hashCode,
          $mrjc(applicableDate.hashCode,
              $mrjc(dayPointer.hashCode, weatherStateAbbr.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is weather &&
          other.id == this.id &&
          other.temperature == this.temperature &&
          other.applicableDate == this.applicableDate &&
          other.dayPointer == this.dayPointer &&
          other.weatherStateAbbr == this.weatherStateAbbr);
}

class WeathersCompanion extends UpdateCompanion<weather> {
  final Value<int> id;
  final Value<double> temperature;
  final Value<String> applicableDate;
  final Value<String> dayPointer;
  final Value<String> weatherStateAbbr;
  const WeathersCompanion({
    this.id = const Value.absent(),
    this.temperature = const Value.absent(),
    this.applicableDate = const Value.absent(),
    this.dayPointer = const Value.absent(),
    this.weatherStateAbbr = const Value.absent(),
  });
  WeathersCompanion.insert({
    this.id = const Value.absent(),
    @required double temperature,
    @required String applicableDate,
    @required String dayPointer,
    @required String weatherStateAbbr,
  })  : temperature = Value(temperature),
        applicableDate = Value(applicableDate),
        dayPointer = Value(dayPointer),
        weatherStateAbbr = Value(weatherStateAbbr);
  static Insertable<weather> custom({
    Expression<int> id,
    Expression<double> temperature,
    Expression<String> applicableDate,
    Expression<String> dayPointer,
    Expression<String> weatherStateAbbr,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (temperature != null) 'temperature': temperature,
      if (applicableDate != null) 'applicable_date': applicableDate,
      if (dayPointer != null) 'day_pointer': dayPointer,
      if (weatherStateAbbr != null) 'weather_state_abbr': weatherStateAbbr,
    });
  }

  WeathersCompanion copyWith(
      {Value<int> id,
      Value<double> temperature,
      Value<String> applicableDate,
      Value<String> dayPointer,
      Value<String> weatherStateAbbr}) {
    return WeathersCompanion(
      id: id ?? this.id,
      temperature: temperature ?? this.temperature,
      applicableDate: applicableDate ?? this.applicableDate,
      dayPointer: dayPointer ?? this.dayPointer,
      weatherStateAbbr: weatherStateAbbr ?? this.weatherStateAbbr,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (temperature.present) {
      map['temperature'] = Variable<double>(temperature.value);
    }
    if (applicableDate.present) {
      map['applicable_date'] = Variable<String>(applicableDate.value);
    }
    if (dayPointer.present) {
      map['day_pointer'] = Variable<String>(dayPointer.value);
    }
    if (weatherStateAbbr.present) {
      map['weather_state_abbr'] = Variable<String>(weatherStateAbbr.value);
    }
    return map;
  }
}

class $WeathersTable extends Weathers with TableInfo<$WeathersTable, weather> {
  final GeneratedDatabase _db;
  final String _alias;
  $WeathersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _temperatureMeta =
      const VerificationMeta('temperature');
  GeneratedRealColumn _temperature;
  @override
  GeneratedRealColumn get temperature =>
      _temperature ??= _constructTemperature();
  GeneratedRealColumn _constructTemperature() {
    return GeneratedRealColumn(
      'temperature',
      $tableName,
      false,
    );
  }

  final VerificationMeta _applicableDateMeta =
      const VerificationMeta('applicableDate');
  GeneratedTextColumn _applicableDate;
  @override
  GeneratedTextColumn get applicableDate =>
      _applicableDate ??= _constructApplicableDate();
  GeneratedTextColumn _constructApplicableDate() {
    return GeneratedTextColumn(
      'applicable_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dayPointerMeta = const VerificationMeta('dayPointer');
  GeneratedTextColumn _dayPointer;
  @override
  GeneratedTextColumn get dayPointer => _dayPointer ??= _constructDayPointer();
  GeneratedTextColumn _constructDayPointer() {
    return GeneratedTextColumn(
      'day_pointer',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weatherStateAbbrMeta =
      const VerificationMeta('weatherStateAbbr');
  GeneratedTextColumn _weatherStateAbbr;
  @override
  GeneratedTextColumn get weatherStateAbbr =>
      _weatherStateAbbr ??= _constructWeatherStateAbbr();
  GeneratedTextColumn _constructWeatherStateAbbr() {
    return GeneratedTextColumn(
      'weather_state_abbr',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, temperature, applicableDate, dayPointer, weatherStateAbbr];
  @override
  $WeathersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'weathers';
  @override
  final String actualTableName = 'weathers';
  @override
  VerificationContext validateIntegrity(Insertable<weather> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('temperature')) {
      context.handle(
          _temperatureMeta,
          temperature.isAcceptableOrUnknown(
              data['temperature'], _temperatureMeta));
    } else if (isInserting) {
      context.missing(_temperatureMeta);
    }
    if (data.containsKey('applicable_date')) {
      context.handle(
          _applicableDateMeta,
          applicableDate.isAcceptableOrUnknown(
              data['applicable_date'], _applicableDateMeta));
    } else if (isInserting) {
      context.missing(_applicableDateMeta);
    }
    if (data.containsKey('day_pointer')) {
      context.handle(
          _dayPointerMeta,
          dayPointer.isAcceptableOrUnknown(
              data['day_pointer'], _dayPointerMeta));
    } else if (isInserting) {
      context.missing(_dayPointerMeta);
    }
    if (data.containsKey('weather_state_abbr')) {
      context.handle(
          _weatherStateAbbrMeta,
          weatherStateAbbr.isAcceptableOrUnknown(
              data['weather_state_abbr'], _weatherStateAbbrMeta));
    } else if (isInserting) {
      context.missing(_weatherStateAbbrMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  weather map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return weather.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WeathersTable createAlias(String alias) {
    return $WeathersTable(_db, alias);
  }
}

abstract class _$WeatherDatabase extends GeneratedDatabase {
  _$WeatherDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $WeathersTable _weathers;
  $WeathersTable get weathers => _weathers ??= $WeathersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [weathers];
}
