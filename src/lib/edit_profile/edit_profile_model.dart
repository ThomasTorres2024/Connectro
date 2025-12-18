import '/components/profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Profile component.
  late ProfileModel profileModel;

  @override
  void initState(BuildContext context) {
    profileModel = createModel(context, () => ProfileModel());
  }

  @override
  void dispose() {
    profileModel.dispose();
  }
}
