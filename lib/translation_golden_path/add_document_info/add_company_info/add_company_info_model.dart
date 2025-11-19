import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_company_info_widget.dart' show AddCompanyInfoWidget;
import 'package:flutter/material.dart';

class AddCompanyInfoModel extends FlutterFlowModel<AddCompanyInfoWidget> {
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

  /// all company info as a json
  dynamic allCompanyInfo;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for company_name widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
  String? _companyNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Company Name is required';
    }

    if (val.length < 1) {
      return 'Required field, cannot leave empty';
    }

    return null;
  }

  // State field(s) for company_address widget.
  FocusNode? companyAddressFocusNode;
  TextEditingController? companyAddressTextController;
  String? Function(BuildContext, String?)?
      companyAddressTextControllerValidator;
  String? _companyAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Company Address is required';
    }

    if (val.length < 1) {
      return 'Required field, cannot leave empty';
    }

    return null;
  }

  // State field(s) for company_email widget.
  FocusNode? companyEmailFocusNode;
  TextEditingController? companyEmailTextController;
  String? Function(BuildContext, String?)? companyEmailTextControllerValidator;
  String? _companyEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (val.length < 1) {
      return 'Required field, cannot leave empt';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email.';
    }
    return null;
  }

  // State field(s) for company_phone_number widget.
  FocusNode? companyPhoneNumberFocusNode;
  TextEditingController? companyPhoneNumberTextController;
  String? Function(BuildContext, String?)?
      companyPhoneNumberTextControllerValidator;
  String? _companyPhoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone Number Required';
    }

    if (val.length < 12) {
      return 'Expecting phone number of form xxx-xxx-xxxx';
    }
    if (val.length > 12) {
      return 'Expecting phone number of form xxx-xxx-xxxx';
    }

    return null;
  }

  // Stores action output result for [Bottom Sheet - ConfirmCompanyInfo] action in Button widget.
  bool? companyConfirmed;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    companyNameTextControllerValidator = _companyNameTextControllerValidator;
    companyAddressTextControllerValidator =
        _companyAddressTextControllerValidator;
    companyEmailTextControllerValidator = _companyEmailTextControllerValidator;
    companyPhoneNumberTextControllerValidator =
        _companyPhoneNumberTextControllerValidator;
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    companyNameFocusNode?.dispose();
    companyNameTextController?.dispose();

    companyAddressFocusNode?.dispose();
    companyAddressTextController?.dispose();

    companyEmailFocusNode?.dispose();
    companyEmailTextController?.dispose();

    companyPhoneNumberFocusNode?.dispose();
    companyPhoneNumberTextController?.dispose();

    navbarModel.dispose();
  }
}
