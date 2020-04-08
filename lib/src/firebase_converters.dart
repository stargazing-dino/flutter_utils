import 'package:cloud_firestore/cloud_firestore.dart';

/// Converts a cloud_firestore Timestamp into a DateTime one.
/// This is meant to be added in serializable decorators.
DateTime fromJsonToDateTime(Timestamp timeStamp) {
  return timeStamp?.toDate();
}

/// Converts a DateTime object into a cloud_firestore Timestamp
/// one.
Timestamp toJsonFromDateTime(DateTime date) {
  return date == null ? null : Timestamp.fromDate(date);
}

/// This is used in the case when you don't want to serialize
/// a property to json using json_serializable
dynamic toNull(dynamic _) => null;
