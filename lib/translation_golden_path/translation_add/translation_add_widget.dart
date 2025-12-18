import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/translation_golden_path/select_document_type/select_document_type_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'translation_add_model.dart';
export 'translation_add_model.dart';

class TranslationAddWidget extends StatefulWidget {
  const TranslationAddWidget({super.key});

  static String routeName = 'TranslationAdd';
  static String routePath = '/translationAdd';

  @override
  State<TranslationAddWidget> createState() => _TranslationAddWidgetState();
}

class _TranslationAddWidgetState extends State<TranslationAddWidget> {
  late TranslationAddModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TranslationAddModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TranslationAdd'});
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFF2692D),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 24.0,
                ),
                Text(
                  'Home',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 28.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 250.0,
                            height: 250.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'TRANSLATION_ADD_CREATE_NEW_DOCUMENT_BTN_');
                              logFirebaseEvent('Button_bottom_sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: SelectDocumentTypeWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(
                                  () => _model.documentType = value));

                              if ((_model.documentType == 'Invoice') ||
                                  (_model.documentType == 'Estimate')) {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  AddCompanyInfoWidget.routeName,
                                  queryParameters: {
                                    'documentType': serializeParam(
                                      _model.documentType,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              }

                              safeSetState(() {});
                            },
                            text: 'Create New Document',
                            icon: Icon(
                              Icons.file_upload,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                width: 50.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'TRANSLATION_ADD_VIEW_DOCUMENT_HISTORY_BT');
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed(
                                  AllTranslatedDocumentsWidget.routeName);
                            },
                            text: 'View Document History',
                            icon: Icon(
                              Icons.cloud_done,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                width: 50.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              hoverColor: FlutterFlowTheme.of(context).primary,
                              hoverBorderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 50.0,
                              ),
                              hoverElevation: 1.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'TRANSLATION_ADD_PAGE_HELP_BTN_ON_TAP');
                              logFirebaseEvent('Button_launch_u_r_l');
                              await launchURL(
                                  'https://sites.google.com/uri.edu/305connectrowebsite/home?authuser=1');
                            },
                            text: 'Help',
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                width: 50.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              hoverColor: FlutterFlowTheme.of(context).primary,
                              hoverBorderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 50.0,
                              ),
                              hoverElevation: 1.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'TRANSLATION_ADD_PAGE_ABOUT_US_BTN_ON_TAP');
                              logFirebaseEvent('Button_launch_u_r_l');
                              await launchURL('https://sureway.ai/');
                            },
                            text: 'About Us',
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                width: 50.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              hoverColor: FlutterFlowTheme.of(context).primary,
                              hoverBorderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 50.0,
                              ),
                              hoverElevation: 1.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            key: ValueKey('Button_5u8o'),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'TRANSLATION_ADD_PAGE_LOGOUT_BTN_ON_TAP');
                              logFirebaseEvent('Button_auth');
                              GoRouter.of(context).prepareAuthEvent();
                              await authManager.signOut();
                              GoRouter.of(context).clearRedirectLocation();

                              context.goNamedAuth(
                                  LoginWidget.routeName, context.mounted);
                            },
                            text: 'Logout',
                            icon: Icon(
                              Icons.login_outlined,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                width: 50.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        FlutterFlowAdBanner(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          showsTestAd: false,
                          androidAdUnitID:
                              'ca-app-pub-3098253681987905/9598631338',
                        ),
                      ].divide(SizedBox(height: 15.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
