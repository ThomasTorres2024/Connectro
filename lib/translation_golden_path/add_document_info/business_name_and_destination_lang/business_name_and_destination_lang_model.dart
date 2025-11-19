import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'business_name_and_destination_lang_widget.dart'
    show BusinessNameAndDestinationLangWidget;
import 'package:flutter/material.dart';

class BusinessNameAndDestinationLangModel
    extends FlutterFlowModel<BusinessNameAndDestinationLangWidget> {
  ///  Local state fields for this page.
  /// all of the document tasks the user created
  List<dynamic> userDocumentTasksList = [];
  void addToUserDocumentTasksList(dynamic item) =>
      userDocumentTasksList.add(item);
  void removeFromUserDocumentTasksList(dynamic item) =>
      userDocumentTasksList.remove(item);
  void removeAtIndexFromUserDocumentTasksList(int index) =>
      userDocumentTasksList.removeAt(index);
  void insertAtIndexInUserDocumentTasksList(int index, dynamic item) =>
      userDocumentTasksList.insert(index, item);
  void updateUserDocumentTasksListAtIndex(
          int index, Function(dynamic) updateFn) =>
      userDocumentTasksList[index] = updateFn(userDocumentTasksList[index]);

  dynamic allDocumentInfo;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Bottom Sheet - addDocumentTasks] action in IconButton widget.
  dynamic newUserTask;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
