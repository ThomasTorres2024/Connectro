import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/translation_golden_path/add_task/add_task_widget.dart';
import '/translation_golden_path/task/task_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_translated_documents_model.dart';
export 'all_translated_documents_model.dart';

class AllTranslatedDocumentsWidget extends StatefulWidget {
  const AllTranslatedDocumentsWidget({super.key});

  static String routeName = 'AllTranslatedDocuments';
  static String routePath = '/allTranslatedDocuments';

  @override
  State<AllTranslatedDocumentsWidget> createState() =>
      _AllTranslatedDocumentsWidgetState();
}

class _AllTranslatedDocumentsWidgetState
    extends State<AllTranslatedDocumentsWidget> {
  late AllTranslatedDocumentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTranslatedDocumentsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AllTranslatedDocuments'});
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Created Documents',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                        ),
                  ),
                ),
                Expanded(
                  child: StreamBuilder<List<TasksRecord>>(
                    stream: queryTasksRecord(
                      queryBuilder: (tasksRecord) => tasksRecord
                          .where(
                            'user',
                            isEqualTo: currentUserReference,
                          )
                          .where(
                            'completed',
                            isEqualTo: false,
                          ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<TasksRecord> listViewTasksRecordList =
                          snapshot.data!;

                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ALL_TRANSLATED_DOCUMENTS_ListView_5ztvyz');
                          logFirebaseEvent('ListView_bottom_sheet');
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: AddTaskWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewTasksRecordList.length,
                          separatorBuilder: (_, __) => SizedBox(height: 12.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewTasksRecord =
                                listViewTasksRecordList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ALL_TRANSLATED_DOCUMENTS_Container_jbtas');
                                logFirebaseEvent('task_navigate_to');

                                context.pushNamed(
                                  DetailsWidget.routeName,
                                  queryParameters: {
                                    'taskDoc': serializeParam(
                                      listViewTasksRecord,
                                      ParamType.Document,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'taskDoc': listViewTasksRecord,
                                  },
                                );
                              },
                              child: TaskWidget(
                                key: Key(
                                    'Keyjbt_${listViewIndex}_of_${listViewTasksRecordList.length}'),
                                tasksDoc: listViewTasksRecord,
                                checkAction: () async {
                                  logFirebaseEvent(
                                      'ALL_TRANSLATED_DOCUMENTS_Container_jbtas');
                                  logFirebaseEvent('task_backend_call');

                                  await listViewTasksRecord.reference
                                      .update(createTasksRecordData(
                                    completed: true,
                                  ));
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ].divide(SizedBox(height: 1.0)),
            ),
          ),
        ),
      ),
    );
  }
}
