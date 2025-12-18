import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'profile_main_model.dart';
export 'profile_main_model.dart';

/// User Account Settings Menu
class ProfileMainWidget extends StatefulWidget {
  const ProfileMainWidget({super.key});

  @override
  State<ProfileMainWidget> createState() => _ProfileMainWidgetState();
}

class _ProfileMainWidgetState extends State<ProfileMainWidget> {
  late ProfileMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileMainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        width: 480.0,
        height: 826.6,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: FlutterFlowTheme.of(context).accent1,
              offset: Offset(
                0.0,
                4.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                    child: Container(
                      width: 68.0,
                      height: 68.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(68.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(2.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.black,
                          borderRadius: 20.0,
                          buttonSize: 37.0,
                          fillColor: Colors.white,
                          icon: Icon(
                            Icons.add_rounded,
                            color: Color(0xFF080000),
                            size: 21.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Connectro',
                          style: TextStyle(
                            color: Color(0xFF1F2937),
                            fontWeight: FontWeight.normal,
                            fontSize: 24.0,
                          ),
                        ),
                        Text(
                          '@connectro.com',
                          style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                ].divide(SizedBox(width: 15.0)),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: Color(0xFFE5E7EB),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('PROFILE_MAIN_Container_cjeok9k8_ON_TAP');
                    logFirebaseEvent('Container_navigate_to');

                    context.pushNamed(EditProfileWidget.routeName);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.person_outline,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              Text(
                                'My Profile',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                              ),
                            ].divide(SizedBox(width: 15.0)),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xFF9CA3AF),
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('PROFILE_MAIN_COMP_Row_qr43gre7_ON_TAP');
                    logFirebaseEvent('Row_navigate_to');

                    context.pushNamed(EditProfileWidget.routeName);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.settings,
                            color: Color(0xFF1F2937),
                            size: 24.0,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                              color: Color(0xFF1F2937),
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                            ),
                          ),
                        ].divide(SizedBox(width: 15.0)),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xFF9CA3AF),
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          color: Color(0xFF1F2937),
                          size: 24.0,
                        ),
                        Text(
                          'Notification',
                          style: TextStyle(
                            color: Color(0xFF1F2937),
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                    Text(
                      'Allow',
                      style: TextStyle(
                        color: Color(0xFF4B5563),
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Color(0xFF1F2937),
                      size: 24.0,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                    ),
                  ].divide(SizedBox(width: 15.0)),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional(-1.0, 1.0),
                children: [],
              ),
            ].divide(SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
