import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TemporaryAPICallCopyCall {
  static Future<ApiCallResponse> call({
    String? quote = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'temporaryAPICall Copy',
      apiUrl: 'https://zenquotes.io/api/quotes/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? obtainedQuote(dynamic response) => (getJsonField(
        response,
        r'''$[:].q''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class NewapicallCall {
  static Future<ApiCallResponse> call({
    dynamic companyInfoJson,
    dynamic tasksJson,
    dynamic clientInfoJson,
    String? documentType = 'Invoice',
  }) async {
    final companyInfo = _serializeJson(companyInfoJson);
    final tasks = _serializeJson(tasksJson, true);
    final clientInfo = _serializeJson(clientInfoJson);
    final ffApiRequestBody = '''
{
  "tasks": ${tasks},
  "companyInfo": ${companyInfo},
  "clientInfo": ${clientInfo},
  "documentType": "${escapeStringForJson(documentType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'newapicall',
      apiUrl: 'https://on-request-example-3vwbwvc4yq-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class JSONtoNEightNCall {
  static Future<ApiCallResponse> call({
    dynamic tasksListJson,
    String? toLang = 'english',
  }) async {
    final tasksList = _serializeJson(tasksListJson, true);
    final ffApiRequestBody = '''
{
  "from_lang": "english",
  "to_lang": "${escapeStringForJson(toLang)}",
  "tasks": ${tasksList}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'JSONtoNEightN',
      apiUrl:
          'https://connectro2.app.n8n.cloud/webhook/c9a1ef05-800a-4e81-81b9-7ceb722305c7',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
