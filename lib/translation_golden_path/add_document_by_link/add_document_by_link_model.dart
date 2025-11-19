import '/flutter_flow/flutter_flow_util.dart';
import 'add_document_by_link_widget.dart' show AddDocumentByLinkWidget;
import 'package:flutter/material.dart';

class AddDocumentByLinkModel extends FlutterFlowModel<AddDocumentByLinkWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();
  }
}
