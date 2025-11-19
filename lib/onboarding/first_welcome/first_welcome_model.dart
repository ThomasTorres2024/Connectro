import '/flutter_flow/flutter_flow_util.dart';
import '/onboarding/onboarding1/onboarding1_widget.dart';
import 'first_welcome_widget.dart' show FirstWelcomeWidget;
import 'package:flutter/material.dart';

class FirstWelcomeModel extends FlutterFlowModel<FirstWelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Onboarding1 component.
  late Onboarding1Model onboarding1Model;

  @override
  void initState(BuildContext context) {
    onboarding1Model = createModel(context, () => Onboarding1Model());
  }

  @override
  void dispose() {
    onboarding1Model.dispose();
  }
}
