import '/components/profile_main_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Profile_main component.
  late ProfileMainModel profileMainModel;

  @override
  void initState(BuildContext context) {
    profileMainModel = createModel(context, () => ProfileMainModel());
  }

  @override
  void dispose() {
    profileMainModel.dispose();
  }
}
