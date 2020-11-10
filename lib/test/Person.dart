import 'package:json_annotation/json_annotation.dart';

part 'Person.g.dart';

@JsonSerializable(includeIfNull: false)
class Person {
  final String firstName;

  @JsonKey(includeIfNull: false)
  final String middleName;

  final String lastName;

  @JsonKey(name: "date-of-birth", nullable: false)
  final DateTime dateOfBirth;

  @JsonKey(name: "last-order")
  final DateTime lastOrder;

  @JsonKey(nullable: false)
  List<Order> orders;

  Person(this.firstName, this.lastName, this.dateOfBirth,
      {this.middleName, this.lastOrder, List<Order> orders})
      : orders = orders ?? <Order>[];

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJoson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Order {
  int count = 0;
  int itemNumber;
  bool isRushed;
  Item item;

  @JsonKey(
      name: "prep-time",
      fromJson: _durationFromMilliSeconds,
      toJson: _durationToMilliSeconds)
  Duration prepTime;

  @JsonKey(fromJson: _dateTimeFromEpochUs, toJson: _dateTimeToEpochUS)
  final DateTime date;

  Order(this.date);

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  static Duration _durationFromMilliSeconds(int milliseconds) =>
      milliseconds == null ? null : Duration(milliseconds: milliseconds);

  static int _durationToMilliSeconds(Duration duration) =>
      duration?.inMicroseconds;

  static DateTime _dateTimeFromEpochUs(int us) =>
      us == null ? null : DateTime.fromMicrosecondsSinceEpoch(us);

  static int _dateTimeToEpochUS(DateTime dateTime) =>
      dateTime?.microsecondsSinceEpoch;
}

@JsonSerializable()
class Item {
  int count;
  int itemNumber;
  bool isRushed;
  Item();
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonLiteral("data.json")
Map get gloassaryData => _$glossaryDataJsonLiteral;
