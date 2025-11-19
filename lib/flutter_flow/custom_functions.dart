import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String formatDocumentListToString(
  List<String>? filesUploaded,
  String? language,
) {
  String filesFoundString = "Upload a file using a link, or a set of files.";
  filesFoundString = "";
  //check nullity, if not null then append each file name the user added
  if (filesUploaded != null) {
    filesUploaded.forEach((fileName) {
      filesFoundString += fileName + "\n";
    });
  }

  return filesFoundString;
}

bool verifyDocumentType(String? documentName) {
  bool documentTypeVerified = false;
  List<String> validFileTypes = ['csv', 'xlsx'];
  if (documentName != null) {
    //check the end of the file and make sure that it has a csv or xsl ending? not sure what type of file we are using here, but
    //for now i will assume that
    //if()
  }
  return documentTypeVerified;
}

dynamic convertCompanyFieldsToJSON(
  String companyName,
  String companyNumber,
  String companyEmail,
  String companyAddress,
) {
  return {
    "name": companyName,
    "address": companyAddress,
    "phone": companyNumber,
    "email": companyEmail,
  };
}

dynamic convertClientFieldsToJSON(
  String clietName,
  String clientNumber,
  String clientEmail,
  String clientAddress,
) {
  return {
    'name': clietName,
    'address': clientAddress,
    'phone': clientNumber,
    'email': clientEmail
  };
}

dynamic convertTasksToJSON(
  double quantity,
  double price,
  String description,
) {
  return {
    "desc": description,
    "quantity": quantity,
    "unit_price": price,
  };
}

dynamic condenseJSONInfoForTranslationFunction(
  dynamic clientInfo,
  dynamic companyInfo,
  List<dynamic> tasksInfo,
  String documentType,
) {
  return {
    "descriptions": tasksInfo,
    "client_info": clientInfo,
    "companyInfo": companyInfo,
    "documentType": documentType,
  };
}
