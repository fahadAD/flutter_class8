// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// List<Samijson> samijsonFromJson(String str) => List<Samijson>.from(json.decode(str).map((x) => Samijson.fromJson(x)));
//
// String samijsonToJson(List<Samijson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Samijson extends Equatable{
//   Samijson({
//     this.id,
//     this.name,
//     this.username,
//     this.email,
//     this.address,
//     this.phone,
//     this.website,
//     this.company,
//   });
//
//   int? id;
//   String? name;
//   String? username;
//   String? email;
//   Address? address;
//   String? phone;
//   String? website;
//   Company? company;
//
//   factory Samijson.fromJson(Map<String, dynamic> json) => Samijson(
//     id: json["id"],
//     name: json["name"],
//     username: json["username"],
//     email: json["email"],
//     address: json["address"] == null ? null : Address.fromJson(json["address"]),
//     phone: json["phone"],
//     website: json["website"],
//     company: json["company"] == null ? null : Company.fromJson(json["company"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "username": username,
//     "email": email,
//     "address": address?.toJson(),
//     "phone": phone,
//     "website": website,
//     "company": company?.toJson(),
//   };
//
//   @override
//    List<Object?> get props =>  [];
// }
//
// class Address {
//   Address({
//     this.street,
//     this.suite,
//     this.city,
//     this.zipcode,
//     this.geo,
//   });
//
//   String? street;
//   String? suite;
//   String? city;
//   String? zipcode;
//   Geo? geo;
//
//   factory Address.fromJson(Map<String, dynamic> json) => Address(
//     street: json["street"],
//     suite: json["suite"],
//     city: json["city"],
//     zipcode: json["zipcode"],
//     geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "street": street,
//     "suite": suite,
//     "city": city,
//     "zipcode": zipcode,
//     "geo": geo?.toJson(),
//   };
// }
//
// class Geo {
//   Geo({
//     this.lat,
//     this.lng,
//   });
//
//   String? lat;
//   String? lng;
//
//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//     lat: json["lat"],
//     lng: json["lng"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "lat": lat,
//     "lng": lng,
//   };
// }
//
// class Company {
//   Company({
//     this.name,
//     this.catchPhrase,
//     this.bs,
//   });
//
//   String? name;
//   String? catchPhrase;
//   String? bs;
//
//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//     name: json["name"],
//     catchPhrase: json["catchPhrase"],
//     bs: json["bs"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "catchPhrase": catchPhrase,
//     "bs": bs,
//   };
// }





import 'dart:convert';

import 'package:equatable/equatable.dart';

List<Samijson> samijsonFromJson(String str) => List<Samijson>.from(json.decode(str).map((x) => Samijson.fromJson(x)));

String samijsonToJson(List<Samijson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Samijson extends Equatable{
  Samijson({
    this.name,
    this.id,
    this.description,
    this.datetime,
  });

  String? name;
  int? id;
  String? description;
  String? datetime;

  factory Samijson.fromJson(Map<String, dynamic> json) => Samijson(
    name: json["name"],
    id: json["id"],
    description: json["description"],
    datetime: json["datetime"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
    "description": description,
    "datetime": datetime,
  };

  @override
   List<Object?> get props =>  [
    name,
    id,
    description,
    datetime,
  ];
}







