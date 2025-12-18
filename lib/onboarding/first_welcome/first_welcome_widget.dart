import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/onboarding/onboarding1/onboarding1_widget.dart';
import 'package:flutter/material.dart';
import 'first_welcome_model.dart';
export 'first_welcome_model.dart';

class FirstWelcomeWidget extends StatefulWidget {
  const FirstWelcomeWidget({super.key});

  static String routeName = 'first_welcome';
  static String routePath = '/firstWelcome';

  @override
  State<FirstWelcomeWidget> createState() => _FirstWelcomeWidgetState();
}

class _FirstWelcomeWidgetState extends State<FirstWelcomeWidget> {
  late FirstWelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstWelcomeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'first_welcome'});
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
            model: _model.onboarding1Model,
            updateCallback: () => safeSetState(() {}),
            child: Onboarding1Widget(
              key: ValueKey('Onboarding1_sugq'),
            ),
          ),
        ),
      ),
    );
  }
}
