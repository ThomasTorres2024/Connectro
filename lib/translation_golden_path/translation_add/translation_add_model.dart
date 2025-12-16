import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'translation_add_widget.dart' show TranslationAddWidget;
import 'package:flutter/material.dart';

class TranslationAddModel extends FlutterFlowModel<TranslationAddWidget> {
  ///  Local state fields for this page.
  /// uploaded file
  String? linkToUploadedFile = '';

  /// list of strings of all of the documents the user added
  List<String> allDocumentsAdded = [];
  void addToAllDocumentsAdded(String item) => allDocumentsAdded.add(item);
  void removeFromAllDocumentsAdded(String item) =>
      allDocumentsAdded.remove(item);
  void removeAtIndexFromAllDocumentsAdded(int index) =>
      allDocumentsAdded.removeAt(index);
  void insertAtIndexInAllDocumentsAdded(int index, String item) =>
      allDocumentsAdded.insert(index, item);
  void updateAllDocumentsAddedAtIndex(int index, Function(String) updateFn) =>
      allDocumentsAdded[index] = updateFn(allDocumentsAdded[index]);

  /// All of the document types added
  List<String> allDocumentTypes = [];
  void addToAllDocumentTypes(String item) => allDocumentTypes.add(item);
  void removeFromAllDocumentTypes(String item) => allDocumentTypes.remove(item);
  void removeAtIndexFromAllDocumentTypes(int index) =>
      allDocumentTypes.removeAt(index);
  void insertAtIndexInAllDocumentTypes(int index, String item) =>
      allDocumentTypes.insert(index, item);
  void updateAllDocumentTypesAtIndex(int index, Function(String) updateFn) =>
      allDocumentTypes[index] = updateFn(allDocumentTypes[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Bottom Sheet - SelectDocumentType] action in Button widget.
  String? documentType;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
