import 'dart:convert';

import 'package:flutter/src/widgets/basic.dart';

Victasoft victasoftFromJson(String str) => Victasoft.fromJson(json.decode(str));

String victasoftToJson(Victasoft data) => json.encode(data.toJson());

class Victasoft {
  Data data;
  String message;
  bool response;

  Victasoft({
    required this.data,
    required this.message,
    required this.response,
  });

  factory Victasoft.fromJson(Map<String, dynamic> json) => Victasoft(
        data: Data.fromJson(json["data"]),
        message: json["message"],
        response: json["response"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
        "response": response,
      };

  static map(Builder Function(dynamic instance) param0) {}
}

class Data {
  List<Event> allevent;
  List<Event> todayevent;
  List<dynamic> tomorrowevent;
  List<Event> wekendevent;
  List<Event> populerevents;
  List<Benner> benner;
  List<Eventcategory> eventcategory;
  List<Organizationlist> organizationlist;

  Data({
    required this.allevent,
    required this.todayevent,
    required this.tomorrowevent,
    required this.wekendevent,
    required this.populerevents,
    required this.benner,
    required this.eventcategory,
    required this.organizationlist,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        allevent:
            List<Event>.from(json["allevent"].map((x) => Event.fromJson(x))),
        todayevent:
            List<Event>.from(json["todayevent"].map((x) => Event.fromJson(x))),
        tomorrowevent: List<dynamic>.from(json["tomorrowevent"].map((x) => x)),
        wekendevent:
            List<Event>.from(json["wekendevent"].map((x) => Event.fromJson(x))),
        populerevents: List<Event>.from(
            json["populerevents"].map((x) => Event.fromJson(x))),
        benner:
            List<Benner>.from(json["benner"].map((x) => Benner.fromJson(x))),
        eventcategory: List<Eventcategory>.from(
            json["eventcategory"].map((x) => Eventcategory.fromJson(x))),
        organizationlist: List<Organizationlist>.from(
            json["organizationlist"].map((x) => Organizationlist.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "allevent": List<dynamic>.from(allevent.map((x) => x.toJson())),
        "todayevent": List<dynamic>.from(todayevent.map((x) => x.toJson())),
        "tomorrowevent": List<dynamic>.from(tomorrowevent.map((x) => x)),
        "wekendevent": List<dynamic>.from(wekendevent.map((x) => x.toJson())),
        "populerevents":
            List<dynamic>.from(populerevents.map((x) => x.toJson())),
        "benner": List<dynamic>.from(benner.map((x) => x.toJson())),
        "eventcategory":
            List<dynamic>.from(eventcategory.map((x) => x.toJson())),
        "organizationlist":
            List<dynamic>.from(organizationlist.map((x) => x.toJson())),
      };
}

class Event {
  String eventId;
  String eventImage;
  String eventName;
  DateTime eventStartDatetime;
  String eventLocation;
  String domainName;
  int liked;
  List<Ticketdatum> ticketdata;
  String currencySymbol;
  String currencyType;

  Event({
    required this.eventId,
    required this.eventImage,
    required this.eventName,
    required this.eventStartDatetime,
    required this.eventLocation,
    required this.domainName,
    required this.liked,
    required this.ticketdata,
    required this.currencySymbol,
    required this.currencyType,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        eventId: json["event_id"],
        eventImage: json["event_image"],
        eventName: json["event_name"],
        eventStartDatetime: DateTime.parse(json["event_start_datetime"]),
        eventLocation: json["event_location"],
        domainName: json["domain_name"],
        liked: json["liked"],
        ticketdata: List<Ticketdatum>.from(
            json["ticketdata"].map((x) => Ticketdatum.fromJson(x))),
        currencySymbol: json["currency_symbol"],
        currencyType: json["currency_type"],
      );

  Map<String, dynamic> toJson() => {
        "event_id": eventId,
        "event_image": eventImage,
        "event_name": eventName,
        "event_start_datetime": eventStartDatetime.toIso8601String(),
        "event_location": eventLocation,
        "domain_name": domainName,
        "liked": liked,
        "ticketdata": List<dynamic>.from(ticketdata.map((x) => x.toJson())),
        "currency_symbol": currencySymbol,
        "currency_type": currencyType,
      };
}

class Ticketdatum {
  int ticketRemaningQty;
  String ticketPriceBuyer;

  Ticketdatum({
    required this.ticketRemaningQty,
    required this.ticketPriceBuyer,
  });

  factory Ticketdatum.fromJson(Map<String, dynamic> json) => Ticketdatum(
        ticketRemaningQty: json["ticket_remaning_qty"],
        ticketPriceBuyer: json["ticket_price_buyer"],
      );

  Map<String, dynamic> toJson() => {
        "ticket_remaning_qty": ticketRemaningQty,
        "ticket_price_buyer": ticketPriceBuyer,
      };
}

class Benner {
  String id;
  String bannerImage;
  String headerText;
  String headerDescription;
  String link;
  String eventId;
  String domainName;

  Benner({
    required this.id,
    required this.bannerImage,
    required this.headerText,
    required this.headerDescription,
    required this.link,
    required this.eventId,
    required this.domainName,
  });

  factory Benner.fromJson(Map<String, dynamic> json) => Benner(
        id: json["id"],
        bannerImage: json["banner_image"],
        headerText: json["header_text"],
        headerDescription: json["header_description"],
        link: json["link"],
        eventId: json["event_id"],
        domainName: json["domain_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "banner_image": bannerImage,
        "header_text": headerText,
        "header_description": headerDescription,
        "link": link,
        "event_id": eventId,
        "domain_name": domainName,
      };
}

class Eventcategory {
  String id;
  String categoryImage;
  String categoryName;
  String categoryDescription;

  Eventcategory({
    required this.id,
    required this.categoryImage,
    required this.categoryName,
    required this.categoryDescription,
  });

  factory Eventcategory.fromJson(Map<String, dynamic> json) => Eventcategory(
        id: json["id"],
        categoryImage: json["category_image"],
        categoryName: json["category_name"],
        categoryDescription: json["category_description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_image": categoryImage,
        "category_name": categoryName,
        "category_description": categoryDescription,
      };
}

class Organizationlist {
  String id;
  String domainName;
  String orgImage;
  String organizerName;
  String aboutOrganizer;

  Organizationlist({
    required this.id,
    required this.domainName,
    required this.orgImage,
    required this.organizerName,
    required this.aboutOrganizer,
  });

  factory Organizationlist.fromJson(Map<String, dynamic> json) =>
      Organizationlist(
        id: json["id"],
        domainName: json["domain_name"],
        orgImage: json["org_image"],
        organizerName: json["organizer_name"],
        aboutOrganizer: json["about_organizer"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "domain_name": domainName,
        "org_image": orgImage,
        "organizer_name": organizerName,
        "about_organizer": aboutOrganizer,
      };
}
