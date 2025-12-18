import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:connectro_2/flutter_flow/flutter_flow_drop_down.dart';
import 'package:connectro_2/flutter_flow/flutter_flow_icon_button.dart';
import 'package:connectro_2/flutter_flow/flutter_flow_radio_button.dart';
import 'package:connectro_2/flutter_flow/flutter_flow_widgets.dart';
import 'package:connectro_2/flutter_flow/flutter_flow_theme.dart';
import 'package:connectro_2/index.dart';
import 'package:connectro_2/main.dart';
import 'package:connectro_2/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:connectro_2/backend/firebase/firebase_config.dart';
import 'package:connectro_2/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('US1 User Signup', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: LoginWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 15000));
    await tester.enterText(find.byKey(const ValueKey('Signup-Email_6ola')),
        'johnpork676141@gmail.com');
    await tester.enterText(find.byKey(const ValueKey('Signup-Password_r2hf')),
        'johnpork676141@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('Signup-ConfirmPassword_ho75')),
        'Hello World');
    await tester.tap(find.byKey(const ValueKey('Signup-Button_gp6i')));
    await tester.enterText(
        find.byKey(const ValueKey('Signup-ConfirmPassword_ho75')),
        'johnpork676141@gmail.com');
    await tester.tap(find.byKey(const ValueKey('Signup-Button_gp6i')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Button_5u8o')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('Signup-Email_6ola')),
        'johnpork676141@gmail.com');
    await tester.enterText(find.byKey(const ValueKey('Signup-Password_r2hf')),
        'johnpork676141@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('Signup-ConfirmPassword_ho75')),
        'johnpork676141@gmail.com');
    await tester.tap(find.byKey(const ValueKey('Signup-Button_gp6i')));
  });

  testWidgets('US2 User Login', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: LoginWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 15000));
    await tester.tap(find.byKey(const ValueKey('LoginTab_qcnq')));
    await tester.enterText(
        find.byKey(const ValueKey('Login-Email_k1ry')), '9@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('Login-Password_t0pw')), '123@gmail.com');
    await tester.tap(find.byKey(const ValueKey('Signup-Button_gp6i')));
    await tester.enterText(
        find.byKey(const ValueKey('Login-Email_k1ry')), '123@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('Login-Password_t0pw')), 'Hello World');
    await tester.tap(find.byKey(const ValueKey('Signup-Button_gp6i')));
    await tester.enterText(
        find.byKey(const ValueKey('Login-Password_t0pw')), '123@gmail.com');
    await tester.tap(find.byKey(const ValueKey('Signup-Button_gp6i')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('Button_5u8o')), findsOneWidget);
  });

  testWidgets('US 3 Profile Screen', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: '123@gmail.com', password: '123@gmail.com');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: ProfileSetupWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.enterText(
        find.byKey(const ValueKey('TextField_3zjw')), 'Real Name');
    await tester.enterText(
        find.byKey(const ValueKey('TextField_qoul')), 'Real Location');
    await tester.tap(find.byKey(const ValueKey('DropDown_jjrs')));
    await tester.tap(find.byType(English));
    await tester.tap(find.byKey(const ValueKey('Button_l12a')));
  });

  testWidgets('Onboarding', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: TranslationAddWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.tap(find.text('Sign Up'));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 2000),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 1000000),
    );
    await tester.tap(find.byKey(const ValueKey('Onboarding1_sugq')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 2000),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 100000),
    );
    await tester.tap(find.byKey(const ValueKey('Onboarding2_6ymo')));
    expect(find.byKey(const ValueKey('Column_i2py')), findsWidgets);
  });

  testWidgets('US 4 Golden Path Implementation ', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: '123@gmail.com', password: '123@gmail.com');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: AddCompanyInfoWidget(
          documentType: 'Invoice',
        ),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.enterText(
        find.byKey(const ValueKey('company_name_ak3c')), 'Company Name');
    await tester.enterText(
        find.byKey(const ValueKey('Button_3w8t')), 'Company Address');
    await tester.enterText(find.byKey(const ValueKey('company_email_ltrn')),
        'company_email@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('company_phone_number_b695')),
        '111-111-1111');
    await tester.tap(find.byKey(const ValueKey('Button_3w8t')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Continue'));
    await tester.enterText(
        find.byKey(const ValueKey('client_name_r2oi')), 'Client Name');
    await tester.enterText(
        find.byKey(const ValueKey('client_address_xcm4')), 'Client Title ');
    await tester.enterText(find.byKey(const ValueKey('client_email_x7gk')),
        'client_email@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('client_phone_number_y36o')), '401-444-4444');
    await tester.tap(find.byKey(const ValueKey('Button_vgnx')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('IconButton_hm72')));
    await tester.enterText(find.text('Description'), 'Description1');
    await tester.enterText(find.text('Quantity'), '1');
    await tester.enterText(find.text('Price'), '1');
    await tester.tap(find.text('Add Task'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Button_esj2')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('Button_m0r8')));
    await tester.pumpAndSettle(const Duration(milliseconds: 30000));
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }
  // Web-specific error when interacting with TextInputType.emailAddress
  if (error.contains('setSelectionRange') &&
      error.contains('HTMLInputElement')) {
    return true;
  }

  return false;
}
