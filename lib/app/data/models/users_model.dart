// // To parse this JSON data, do
// //
// //     final users = usersFromJson(jsonString);

// import 'dart:convert';

// Users usersFromJson(String str) => Users.fromJson(json.decode(str));

// String usersToJson(Users data) => json.encode(data.toJson());

// class Users {
//   Users({
//     required this.page,
//     required this.perPage,
//     required this.total,
//     required this.totalPages,
//     required this.data,
//     required this.support,
//   });

//   int? page;
//   int? perPage;
//   int? total;
//   int? totalPages;
//   List<Datum>? data;
//   Support? support;

//   factory Users.fromJson(Map<String, dynamic> json) => Users(
//         page: json["page"] == null ? null : json["page"],
//         perPage: json["per_page"] == null ? null : json["per_page"],
//         total: json["total"] == null ? null : json["total"],
//         totalPages: json["total_pages"] == null ? null : json["total_pages"],
//         data:
//             List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))) == null
//                 ? null
//                 : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//         support: Support.fromJson(json["support"]) == null
//             ? null
//             : Support.fromJson(json["support"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "page": page == null ? null : page,
//         "per_page": perPage  == null ? null : perPage,
//         "total": total  == null ? null : total,
//         "total_pages": totalPages == null ? null : totalPages,
//         "data": List<dynamic>.from(data!.map((x) => x.toJson())),
//         "support": support!.toJson(),
//       };
// }

// class Datum {
//   Datum({
//     required this.id,
//     required this.email,
//     required this.firstName,
//     required this.lastName,
//     required this.avatar,
//   });

//   int id;
//   String email;
//   String firstName;
//   String lastName;
//   String avatar;

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         id: json["id"],
//         email: json["email"],
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         avatar: json["avatar"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "email": email,
//         "first_name": firstName,
//         "last_name": lastName,
//         "avatar": avatar,
//       };
// }

// class Support {
//   Support({
//     required this.url,
//     required this.text,
//   });

//   String url;
//   String text;

//   factory Support.fromJson(Map<String, dynamic> json) => Support(
//         url: json["url"],
//         text: json["text"],
//       );

//   Map<String, dynamic> toJson() => {
//         "url": url,
//         "text": text,
//       };
// }

class Users {
  Users({

    required this.data,

  });

  late final List<Data> data;

  
  Users.fromJson(Map<String, dynamic> json){
  
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
 
    _data['data'] = data.map((e)=>e.toJson()).toList();

    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });
  late final int id;
  late final String email;
  late final String firstName;
  late final String lastName;
  late final String avatar;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['email'] = email;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['avatar'] = avatar;
    return _data;
  }
}

class Support {
  Support({
    required this.url,
    required this.text,
  });
  late final String url;
  late final String text;
  
  Support.fromJson(Map<String, dynamic> json){
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    _data['text'] = text;
    return _data;
  }
}