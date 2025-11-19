import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_client_info_widget.dart' show AddClientInfoWidget;
import 'package:flutter/material.dart';

class AddClientInfoModel extends FlutterFlowModel<AddClientInfoWidget> {
  ///  Local state fields for this page.

  dynamic clientInfo;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for client_name widget.
  FocusNode? clientNameFocusNode;
  TextEditingController? clientNameTextController;
  String? Function(BuildContext, String?)? clientNameTextControllerValidator;
  String? _clientNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    if (val.length < 1) {
      return 'Cannot be empty';
    }

    return null;
  }

  // State field(s) for client_address widget.
  FocusNode? clientAddressFocusNode;
  TextEditingController? clientAddressTextController;
  String? Function(BuildContext, String?)? clientAddressTextControllerValidator;
  String? _clientAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Company Address is required';
    }

    if (val.length < 1) {
      return 'Cannot be empty';
    }

    return null;
  }

  // State field(s) for client_email widget.
  FocusNode? clientEmailFocusNode;
  TextEditingController? clientEmailTextController;
  String? Function(BuildContext, String?)? clientEmailTextControllerValidator;
  String? _clientEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Company Email is required';
    }

    if (val.length < 1) {
      return 'Cannot be empty';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email.';
    }
    return null;
  }

  // State field(s) for client_phone_number widget.
  FocusNode? clientPhoneNumberFocusNode;
  TextEditingController? clientPhoneNumberTextController;
  String? Function(BuildContext, String?)?
      clientPhoneNumberTextControllerValidator;
  String? _clientPhoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone  Number  is required';
    }

    if (val.length < 10) {
      return 'Not enough digits';
    }
    if (val.length > 12) {
      return 'Max digits is 12';
    }

    return null;
  }

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    clientNameTextControllerValidator = _clientNameTextControllerValidator;
    clientAddressTextControllerValidator =
        _clientAddressTextControllerValidator;
    clientEmailTextControllerValidator = _clientEmailTextControllerValidator;
    clientPhoneNumberTextControllerValidator =
        _clientPhoneNumberTextControllerValidator;
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    clientNameFocusNode?.dispose();
    clientNameTextController?.dispose();

    clientAddressFocusNode?.dispose();
    clientAddressTextController?.dispose();

    clientEmailFocusNode?.dispose();
    clientEmailTextController?.dispose();

    clientPhoneNumberFocusNode?.dispose();
    clientPhoneNumberTextController?.dispose();

    navbarModel.dispose();
  }
}
