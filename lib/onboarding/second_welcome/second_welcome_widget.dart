import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/onboarding/onboarding2/onboarding2_widget.dart';
import 'package:flutter/material.dart';
import 'second_welcome_model.dart';
export 'second_welcome_model.dart';

class SecondWelcomeWidget extends StatefulWidget {
  const SecondWelcomeWidget({super.key});

  static String routeName = 'second_welcome';
  static String routePath = '/secondWelcome';

  @override
  State<SecondWelcomeWidget> createState() => _SecondWelcomeWidgetState();
}

class _SecondWelcomeWidgetState extends State<SecondWelcomeWidget> {
  late SecondWelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondWelcomeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'second_welcome'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.onboarding2Model,
            updateCallback: () => safeSetState(() {}),
            child: Onboarding2Widget(
              key: ValueKey('Onboarding2_6ymo'),
            ),
          ),
        ),
      ),
    );
  }
}
