import '/flutter_flow/flutter_flow_util.dart';
import '/onboarding/onboarding2/onboarding2_widget.dart';
import 'second_welcome_widget.dart' show SecondWelcomeWidget;
import 'package:flutter/material.dart';

class SecondWelcomeModel extends FlutterFlowModel<SecondWelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Onboarding2 component.
  late Onboarding2Model onboarding2Model;

  @override
  void initState(BuildContext context) {
    onboarding2Model = createModel(context, () => Onboarding2Model());
  }

  @override
  void dispose() {
    onboarding2Model.dispose();
  }
}
