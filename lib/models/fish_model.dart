import 'package:json_annotation/json_annotation.dart';

part 'fish_model.g.dart';

@JsonSerializable()
class Fish {
  final int id;

  @JsonKey(name: 'file-name')
  final String fileName;

  @JsonKey(name: 'name')
  final Names names;

  final Availability availability;

  final String shadow;

  final int price;

  @JsonKey(name: 'price-cj')
  final int priceCj;

  @JsonKey(name: 'catch-phrase')
  final String catchPhrase;

  @JsonKey(name: 'museum-phrase')
  final String museumPhrase;

  Fish(
    this.id,
    this.fileName,
    this.names,
    this.availability,
    this.shadow,
    this.price,
    this.priceCj,
    this.catchPhrase,
    this.museumPhrase,
  );

  factory Fish.fromJson(Map<String, dynamic> json) => _$FishFromJson(json);

  Map<String, dynamic> toJson() => _$FishToJson(this);

  String get name => names.en;
  String get rarity => availability.rarity;
  String get timeAvailable => availability.time;
  String get northernMonths => availability.northernMonths;
  String get southernMonths => availability.southernMonths;
  String get location => availability.location;

  bool get isAllDay => availability.isAllDay;
  bool get isAllYear => availability.isAllYear;

  String get getTimeAvailable => (isAllDay) ? 'All day' : timeAvailable;
  String get getMonthAvailableNorth =>
      (isAllYear) ? 'All year' : northernMonths;
  String get getMonthAvailableSouth =>
      (isAllYear) ? 'All year' : southernMonths;
}

@JsonSerializable()
class Names {
  @JsonKey(name: 'name-USen')
  final String en;

  Names(this.en);

  factory Names.fromJson(Map<String, dynamic> json) => _$NamesFromJson(json);

  Map<String, dynamic> toJson() => _$NamesToJson(this);
}

@JsonSerializable()
class Availability {
  @JsonKey(name: 'month-northern')
  final String northernMonths;

  @JsonKey(name: 'month-southern')
  final String southernMonths;

  final String time;

  final bool isAllDay;

  final bool isAllYear;

  final String location;

  final String rarity;

  Availability(
    this.northernMonths,
    this.southernMonths,
    this.time,
    this.isAllDay,
    this.isAllYear,
    this.location,
    this.rarity,
  );

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);
}

class AllFish {
  final Map<String, Fish> fishMap;

  AllFish(this.fishMap);

  AllFish.fromJson(Map<String, dynamic> json)
      : fishMap = json.map(
          (String k, dynamic v) => MapEntry(
            k,
            Fish.fromJson(v),
          ),
        );

  List<Fish> get getList => fishMap.values.toList();
}
