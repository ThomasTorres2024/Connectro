import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'icon_button_model.dart';
export 'icon_button_model.dart';

/// a back arrow button.
///
/// should be circular
/// orange and for the button and the arrow should be white.it should be an
/// icon button
class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({super.key});

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  late IconButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: FlutterFlowIconButton(
        borderColor: Colors.transparent,
        borderRadius: 24.0,
        borderWidth: 1.0,
        buttonSize: 48.0,
        fillColor: FlutterFlowTheme.of(context).primary,
        icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
          size: 24.0,
        ),
        onPressed: () {
          print('IconButton pressed ...');
        },
      ),
    );
  }
}
