import '/backend/api_requests/api_calls.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'get_translated_document_widget.dart' show GetTranslatedDocumentWidget;
import 'package:flutter/material.dart';

class GetTranslatedDocumentModel
    extends FlutterFlowModel<GetTranslatedDocumentWidget> {
  ///  Local state fields for this page.
  /// link to the translated document
  String awaitedTranslationLink = 'Awaiting new document...';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (newapicall)] action in Button widget.
  ApiCallResponse? linkName;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
