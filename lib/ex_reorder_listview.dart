// /*import '/auth/firebase_auth/auth_util.dart';
// import '/backend/backend.dart';
// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import 'home_screen_model.dart';
// export 'home_screen_model.dart';
//
// class HomeScreenWidget extends StatefulWidget {
//   const HomeScreenWidget({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
// }
//
// class _HomeScreenWidgetState extends State<HomeScreenWidget> {
//   late HomeScreenModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => HomeScreenModel());
//
//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isiOS) {
//       SystemChrome.setSystemUIOverlayStyle(
//         SystemUiOverlayStyle(
//           statusBarBrightness: Theme.of(context).brightness,
//           systemStatusBarContrastEnforced: true,
//         ),
//       );
//     }
//
//     context.watch<FFAppState>();
//
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//         drawer: Drawer(
//           elevation: 16,
//           child: Container(
//             decoration: BoxDecoration(
//               color: FlutterFlowTheme.of(context).secondary,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Flexible(
//                   flex: 3,
//                   child: Stack(
//                     children: [
//                       Column(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           Material(
//                             color: Colors.transparent,
//                             elevation: 1,
//                             shape: const CircleBorder(),
//                             child: Container(
//                               width: 80,
//                               height: 80,
//                               decoration: BoxDecoration(
//                                 color: FlutterFlowTheme.of(context).primary,
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: FlutterFlowTheme.of(context).primary,
//                                   width: 1,
//                                 ),
//                               ),
//                               child: Align(
//                                 alignment: AlignmentDirectional(0.00, 0.00),
//                                 child: AuthUserStreamWidget(
//                                   builder: (context) => Container(
//                                     width: 80,
//                                     height: 80,
//                                     clipBehavior: Clip.antiAlias,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: CachedNetworkImage(
//                                       fadeInDuration:
//                                       Duration(milliseconds: 500),
//                                       fadeOutDuration:
//                                       Duration(milliseconds: 500),
//                                       imageUrl: valueOrDefault<String>(
//                                         currentUserPhoto != null &&
//                                             currentUserPhoto != ''
//                                             ? currentUserPhoto
//                                             : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/milk-management-0bgi94/assets/nkvvwcwlr595/demo.png',
//                                         'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/milk-management-0bgi94/assets/nkvvwcwlr595/demo.png',
//                                       ),
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                             EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                             child: AuthUserStreamWidget(
//                               builder: (context) => Text(
//                                 valueOrDefault<String>(
//                                   currentUserDisplayName,
//                                   'Default User',
//                                 ),
//                                 textAlign: TextAlign.center,
//                                 style: FlutterFlowTheme.of(context)
//                                     .bodyLarge
//                                     .override(
//                                   fontFamily: 'Poppins',
//                                   color: Color(0xCBFFFFFF),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(1.00, -1.00),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 0),
//                           child: FlutterFlowIconButton(
//                             borderColor: FlutterFlowTheme.of(context).secondary,
//                             borderRadius: 20,
//                             borderWidth: 1,
//                             buttonSize: 40,
//                             fillColor: FlutterFlowTheme.of(context).primary,
//                             icon: Icon(
//                               Icons.edit_square,
//                               color: FlutterFlowTheme.of(context).secondary,
//                               size: 24,
//                             ),
//                             onPressed: () async {
//                               if (scaffoldKey.currentState!.isDrawerOpen ||
//                                   scaffoldKey.currentState!.isEndDrawerOpen) {
//                                 Navigator.pop(context);
//                               }
//
//                               context.pushNamed(
//                                 'edit_profile',
//                                 extra: <String, dynamic>{
//                                   kTransitionInfoKey: TransitionInfo(
//                                     hasTransition: true,
//                                     transitionType:
//                                     PageTransitionType.leftToRight,
//                                     duration: Duration(milliseconds: 300),
//                                   ),
//                                 },
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   flex: 7,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Divider(
//                         thickness: 1,
//                         color: FlutterFlowTheme.of(context).accent4,
//                       ),
//                       InkWell(
//                         splashColor: Colors.transparent,
//                         focusColor: Colors.transparent,
//                         hoverColor: Colors.transparent,
//                         highlightColor: Colors.transparent,
//                         onTap: () async {
//                           context.pushNamed(
//                             'change_user_screen',
//                             extra: <String, dynamic>{
//                               kTransitionInfoKey: TransitionInfo(
//                                 hasTransition: true,
//                                 transitionType: PageTransitionType.leftToRight,
//                                 duration: Duration(milliseconds: 300),
//                               ),
//                             },
//                           );
//                         },
//                         child: ListTile(
//                           leading: FaIcon(
//                             FontAwesomeIcons.language,
//                             color: FlutterFlowTheme.of(context).primary,
//                             size: 24,
//                           ),
//                           title: Text(
//                             FFLocalizations.of(context).getText(
//                               'y41g7rp3' *//* Change User List *//*,
//                             ),
//                             style: FlutterFlowTheme.of(context)
//                                 .titleLarge
//                                 .override(
//                               fontFamily: 'Poppins',
//                               color: FlutterFlowTheme.of(context).primary,
//                               fontSize: 18,
//                             ),
//                           ),
//                           dense: false,
//                         ),
//                       ),
//                       Divider(
//                         thickness: 1,
//                         color: FlutterFlowTheme.of(context).accent4,
//                       ),
//                       InkWell(
//                         splashColor: Colors.transparent,
//                         focusColor: Colors.transparent,
//                         hoverColor: Colors.transparent,
//                         highlightColor: Colors.transparent,
//                         onTap: () async {
//                           context.pushNamed(
//                             'change_language_screen',
//                             extra: <String, dynamic>{
//                               kTransitionInfoKey: TransitionInfo(
//                                 hasTransition: true,
//                                 transitionType: PageTransitionType.leftToRight,
//                                 duration: Duration(milliseconds: 300),
//                               ),
//                             },
//                           );
//                         },
//                         child: ListTile(
//                           leading: FaIcon(
//                             FontAwesomeIcons.language,
//                             color: FlutterFlowTheme.of(context).primary,
//                             size: 24,
//                           ),
//                           title: Text(
//                             FFLocalizations.of(context).getText(
//                               '7j0ywg8n' *//* Change language *//*,
//                             ),
//                             style: FlutterFlowTheme.of(context)
//                                 .titleLarge
//                                 .override(
//                               fontFamily: 'Poppins',
//                               color: FlutterFlowTheme.of(context).primary,
//                               fontSize: 18,
//                             ),
//                           ),
//                           dense: false,
//                         ),
//                       ),
//                       Divider(
//                         thickness: 1,
//                         color: FlutterFlowTheme.of(context).accent4,
//                       ),
//                       InkWell(
//                         splashColor: Colors.transparent,
//                         focusColor: Colors.transparent,
//                         hoverColor: Colors.transparent,
//                         highlightColor: Colors.transparent,
//                         onTap: () async {
//                           var confirmDialogResponse = await showDialog<bool>(
//                             context: context,
//                             builder: (alertDialogContext) {
//                               return AlertDialog(
//                                 title: Text(FFLocalizations.of(context)
//                                     .getVariableText(
//                                   enText: 'Logout',
//                                   guText: 'લૉગ આઉટ',
//                                 )),
//                                 content: Text(FFLocalizations.of(context)
//                                     .getVariableText(
//                                   enText: 'Do you want to logout?',
//                                   guText: 'શું તમે લોગઆઉટ કરવા માંગો છો?',
//                                 )),
//                                 actions: [
//                                   TextButton(
//                                     onPressed: () => Navigator.pop(
//                                         alertDialogContext, false),
//                                     child: Text(FFLocalizations.of(context)
//                                         .getVariableText(
//                                       enText: 'Cancel',
//                                       guText: 'ના',
//                                     )),
//                                   ),
//                                   TextButton(
//                                     onPressed: () => Navigator.pop(
//                                         alertDialogContext, true),
//                                     child: Text(FFLocalizations.of(context)
//                                         .getVariableText(
//                                       enText: 'Confirm',
//                                       guText: 'હા',
//                                     )),
//                                   ),
//                                 ],
//                               );
//                             },
//                           ) ??
//                               false;
//                           if (confirmDialogResponse) {
//                             if (scaffoldKey.currentState!.isDrawerOpen ||
//                                 scaffoldKey.currentState!.isEndDrawerOpen) {
//                               Navigator.pop(context);
//                             }
//
//                             GoRouter.of(context).prepareAuthEvent();
//                             await authManager.signOut();
//                             GoRouter.of(context).clearRedirectLocation();
//                           }
//
//                           context.goNamedAuth('login_screen', context.mounted);
//                         },
//                         child: ListTile(
//                           leading: Icon(
//                             Icons.logout,
//                             color: FlutterFlowTheme.of(context).primary,
//                             size: 24,
//                           ),
//                           title: Text(
//                             FFLocalizations.of(context).getText(
//                               '4otxqo3z' *//* Logout *//*,
//                             ),
//                             style: FlutterFlowTheme.of(context)
//                                 .titleLarge
//                                 .override(
//                               fontFamily: 'Poppins',
//                               color: FlutterFlowTheme.of(context).primary,
//                               fontSize: 18,
//                             ),
//                           ),
//                           dense: false,
//                         ),
//                       ),
//                       Divider(
//                         thickness: 1,
//                         color: FlutterFlowTheme.of(context).accent4,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         appBar: AppBar(
//           backgroundColor: FlutterFlowTheme.of(context).secondary,
//           automaticallyImplyLeading: false,
//           leading: FlutterFlowIconButton(
//             borderColor: Colors.transparent,
//             borderRadius: 30,
//             borderWidth: 1,
//             buttonSize: 60,
//             icon: Icon(
//               Icons.menu,
//               color: Colors.white,
//               size: 30,
//             ),
//             onPressed: () async {
//               scaffoldKey.currentState!.openDrawer();
//             },
//           ),
//           title: Text(
//             FFLocalizations.of(context).getText(
//               'xpbbrvps' *//* Home *//*,
//             ),
//             style: FlutterFlowTheme.of(context).headlineMedium.override(
//               fontFamily: 'Poppins',
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//           actions: [],
//           centerTitle: true,
//           elevation: 2,
//         ),
//         body: SafeArea(
//           top: true,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//                   child: StreamBuilder<List<UsersRecord>>(
//                     stream: queryUsersRecord(
//                       queryBuilder: (usersRecord) => usersRecord.where(
//                         'role',
//                         isEqualTo: FFAppState().userRole,
//                       ),
//                     ),
//                     builder: (context, snapshot) {
//                       // Customize what your widget looks like when it's loading.
//                       if (!snapshot.hasData) {
//                         return Center(
//                           child: SizedBox(
//                             width: 50,
//                             height: 50,
//                             child: SpinKitFadingCircle(
//                               color: FlutterFlowTheme.of(context).secondary,
//                               size: 50,
//                             ),
//                           ),
//                         );
//                       }
//                       List<UsersRecord> listViewUsersRecordList =
//                       snapshot.data!;
//                       return ListView.separated(
//                         padding: EdgeInsets.fromLTRB(
//                           0,
//                           8,
//                           0,
//                           8,
//                         ),
//                         scrollDirection: Axis.vertical,
//                         itemCount: listViewUsersRecordList.length,
//                         separatorBuilder: (_, __) => SizedBox(height: 8),
//                         itemBuilder: (context, listViewIndex) {
//                           final listViewUsersRecord =
//                           listViewUsersRecordList[listViewIndex];
//                           return Material(
//                             color: Colors.transparent,
//                             elevation: 2,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: FlutterFlowTheme.of(context).primary,
//                                 borderRadius: BorderRadius.circular(8),
//                                 border: Border.all(
//                                   color: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                   width: 1,
//                                 ),
//                               ),
//                               child: Padding(
//                                 padding:
//                                 EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     ClipRRect(
//                                       borderRadius: BorderRadius.circular(60),
//                                       child: Image.network(
//                                         valueOrDefault<String>(
//                                           listViewUsersRecord.photoUrl,
//                                           'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/milk-management-0bgi94/assets/nkvvwcwlr595/demo.png',
//                                         ),
//                                         width: 40,
//                                         height: 40,
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           8, 0, 0, 0),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             valueOrDefault<String>(
//                                               listViewUsersRecord.displayName,
//                                               'User',
//                                             ).maybeHandleOverflow(maxChars: 60),
//                                             maxLines: 1,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyMedium
//                                                 .override(
//                                               fontFamily: 'Poppins',
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                           Text(
//                                             valueOrDefault<String>(
//                                               listViewUsersRecord.address,
//                                               'Address',
//                                             ).maybeHandleOverflow(
//                                                 maxChars: 140),
//                                             maxLines: 3,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .labelSmall,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }*/
//
//
// // Automatic FlutterFlow imports
// import 'package:flutter/scheduler.dart';
//
// import '/backend/backend.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/custom_code/widgets/index.dart'; // Imports other custom widgets
// import '/flutter_flow/custom_functions.dart'; // Imports custom functions
// import 'package:flutter/material.dart';
// // Begin custom widget code
// // DO NOT REMOVE OR MODIFY THE CODE ABOVE!
//
// // import 'package:milk_management/flutter_flow/flutter_flow_widgets.dart';
// import 'package:provider/provider.dart';
//
// import 'dart:ui';
//
// import 'package:flutter/services.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import '../../flutter_flow/flutter_flow_widgets.dart';
// // import 'package:provider/provider.dart';
// // import '../../flutter_flow/flutter_flow_widgets.dart';
//
// class ReorderListView extends StatefulWidget {
//   const ReorderListView({
//     Key? key,
//     this.width,
//     this.height,
//   }) : super(key: key);
//
//   final double? width;
//   final double? height;
//
//   @override
//   _ReorderListViewState createState() => _ReorderListViewState();
// }
//
// class _ReorderListViewState extends State<ReorderListView> {
//   // late ChangeUserScreenModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   List<UsersRecord>? listViewUsersRecordList;
//
//   @override
//   void initState() {
//     super.initState();
//     // _model = createModel(context, () => ChangeUserScreenModel());
//     // On page load action.
//
//     SchedulerBinding.instance.addPostFrameCallback((_) async {
//       listViewUsersRecordList = await queryUsersRecordOnce(
//         queryBuilder: (usersRecord) => usersRecord.where(
//           'role',
//           isEqualTo: FFAppState().userRole,
//         ),
//       );
//       // List<DocumentSnapshot> documents = await FirebaseFirestore.instance
//       //     .collection('myCollection')
//       //     .get()
//       //     .then((QuerySnapshot snapshot) => snapshot.docs);
//
//       final batch = FirebaseFirestore.instance.batch();
//
//       for (final document in listViewUsersRecordList) {
//         if(){
//           batch.update(document.reference, {'completed': true});
//         }
//       }
//
//       batch.commit().then((_) {
//         print('Documents updated successfully');
//       }).catchError((error) {
//         print('Error updating documents: ${error.message}');
//       });
//     });
//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }
//
//   @override
//   void dispose() {
//     // _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isiOS) {
//       SystemChrome.setSystemUIOverlayStyle(
//         SystemUiOverlayStyle(
//           statusBarBrightness: Theme.of(context).brightness,
//           systemStatusBarContrastEnforced: true,
//         ),
//       );
//     }
//
//     context.watch<FFAppState>();
//
//     Widget proxyDecorator(
//         Widget child, int index, Animation<double> animation) {
//       return AnimatedBuilder(
//         animation: animation,
//         builder: (BuildContext context, Widget? child) {
//           final double animValue = Curves.easeInOut.transform(animation.value);
//           final double elevation = lerpDouble(0, 6, animValue)!;
//           return Material(
//             elevation: elevation,
//             color: Colors.blueAccent,
//             shadowColor: Colors.blueAccent,
//             child: child,
//           );
//         },
//         child: child,
//       );
//     }
//
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//             child: listViewUsersRecordList != null && (listViewUsersRecordList?.length ?? 0) > 0 ? ReorderableListView(
//               padding: const EdgeInsets.fromLTRB(
//                 0,
//                 8,
//                 0,
//                 8,
//               ),
//               scrollDirection: Axis.vertical,
//               proxyDecorator: proxyDecorator,
//               children: <Widget>[
//                 for (int index = 0;
//                 index < listViewUsersRecordList?.length;
//                 index += 1)
//                   Material(
//                     key: Key('$index 1'),
//                     color: Colors.transparent,
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Container(
//                       key: Key('$index 2'),
//                       decoration: BoxDecoration(
//                         color: FlutterFlowTheme.of(context).primary,
//                         borderRadius: BorderRadius.circular(8),
//                         border: Border.all(
//                           color: FlutterFlowTheme.of(context)
//                               .secondaryBackground,
//                           width: 1,
//                         ),
//                       ),
//                       child: Padding(
//                         key: Key('$index 3'),
//                         padding:
//                         EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//                         child: Row(
//                           key: Key('$index 4'),
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             ClipRRect(
//                               key: Key('$index 5'),
//                               borderRadius: BorderRadius.circular(60),
//                               child: Image.network(
//                                 key: Key('$index 6'),
//                                 valueOrDefault<String>(
//                                   listViewUsersRecordList![index].photoUrl,
//                                   'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/milk-management-0bgi94/assets/nkvvwcwlr595/demo.png',
//                                 ),
//                                 width: 40,
//                                 height: 40,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               key: Key('$index 7'),
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   8, 0, 0, 0),
//                               child: Column(
//                                 key: Key('$index 8'),
//                                 mainAxisSize: MainAxisSize.max,
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     key: Key('$index 9'),
//                                     valueOrDefault<String>(
//                                       listViewUsersRecordList![index].displayName,
//                                       'User',
//                                     ).maybeHandleOverflow(maxChars: 60),
//                                     maxLines: 1,
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyMedium
//                                         .override(
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                   Padding(
//                                     key: Key('$index 10'),
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         8, 0, 0, 0),
//                                     child: Text(
//                                       key: Key('$index 0'),
//                                       valueOrDefault<String>(
//                                         listViewUsersRecordList![index].address,
//                                         'Address',
//                                       ),
//                                       maxLines: 3,
//                                       style: FlutterFlowTheme.of(context)
//                                           .labelSmall,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   )
//               ],
//               onReorder: (int oldIndex, int newIndex) {
//                 setState(() {
//                   if (oldIndex < newIndex) {
//                     newIndex -= 1;
//                   }
//                   final item = listViewUsersRecordList!.removeAt(oldIndex);
//                   listViewUsersRecordList!.insert(newIndex, item);
//                 });
//               },
//             ) : const CircularProgressIndicator(),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               FFButtonWidget(
//                 onPressed: () async {
//                   // context.safePop();
//                   Navigator.pop(context);
//                 },
//                 text: FFLocalizations.of(context).getText(
//                   'v1ld54sk' /* Cancel */,
//                 ),
//                 options: FFButtonOptions(
//                   height: 40,
//                   padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                   iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                   color: FlutterFlowTheme.of(context).folly,
//                   textStyle: FlutterFlowTheme.of(context).titleSmall.override(
//                     fontFamily: 'Poppins',
//                     color: Colors.white,
//                   ),
//                   elevation: 3,
//                   borderSide: const BorderSide(
//                     color: Colors.transparent,
//                     width: 0,
//                   ),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               FFButtonWidget(
//                 onPressed: () async {
//                   // context.safePop();
//                 },
//                 text: FFLocalizations.of(context).getText(
//                   'or4xdhcg' /* Save */,
//                 ),
//                 options: FFButtonOptions(
//                   height: 40,
//                   padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                   iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                   color: FlutterFlowTheme.of(context).folly,
//                   textStyle: FlutterFlowTheme.of(context).titleSmall.override(
//                     fontFamily: 'Poppins',
//                     color: Colors.white,
//                   ),
//                   elevation: 3,
//                   borderSide: const BorderSide(
//                     color: Colors.transparent,
//                     width: 0,
//                   ),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
