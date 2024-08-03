// class ExTest extends StatefulWidget {
//   const ExTest({Key? key}) : super(key: key);
//
//   @override
//   State<ExTest> createState() => _ExTestState();
// }
//
// class _ExTestState extends State<ExTest> {
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_app/theme/theme/app_theme_extension.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    // scaffoldBackgroundColor: const Color(0xE0F7FDF7),
    // colorScheme: ColorScheme.dark(),
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      color: Colors.grey,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.normal,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    extensions: [
      // AppbarExtension(
      //   appbarTheme1: const AppBarTheme(
      //     shadowColor: Colors.transparent,
      //     elevation: 0.0,
      //     centerTitle: true,
      //     color: Colors.grey,
      //     titleTextStyle: TextStyle(
      //       color: Colors.white,
      //       fontSize: 20.0,
      //       fontWeight: FontWeight.normal,
      //     ),
      //     actionsIconTheme: IconThemeData(size: 16.0),
      //   ),
      //   appbarTheme2: const AppBarTheme(
      //     backgroundColor: Colors.grey,
      //     elevation: 8.0,
      //     toolbarHeight: 96.0,
      //     scrolledUnderElevation: 10.0,
      //     titleTextStyle: TextStyle(
      //       color: Colors.white,
      //       fontSize: 36.0,
      //       fontWeight: FontWeight.normal,
      //     ),
      //     actionsIconTheme: IconThemeData(color: Colors.white),
      //   ),
      //   appbarTheme3: const AppBarTheme(
      //     backgroundColor: Colors.green,
      //     shadowColor: Colors.red,
      //     elevation: 0.0,
      //     centerTitle: false,
      //     scrolledUnderElevation: 10.0,
      //     toolbarHeight: 72.0,
      //     titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.normal),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      //     ),
      //     actionsIconTheme: IconThemeData(
      //       color: Color(0xff1d3f0e),
      //       size: 24.0,
      //     ),
      //   ),
      // ),
    ],

    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.green.withOpacity(0.2),
      filled: true,
      hintStyle: TextStyle(color: Colors.green.withOpacity(0.4), fontSize: 16.0, fontWeight: FontWeight.normal),
      labelStyle: TextStyle(color: Colors.green.withOpacity(0.4), fontSize: 16.0, fontWeight: FontWeight.normal),
      floatingLabelStyle: const TextStyle(color: Colors.green, fontSize: 16.0, fontWeight: FontWeight.normal),
      counterStyle: const TextStyle(color: Colors.green, fontSize: 16.0, fontWeight: FontWeight.normal),
      // floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIconColor: Colors.green,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 8.0,
        shadowColor: Colors.green,
        minimumSize: const Size(200.0, 56.0),
        backgroundColor: Colors.green,
        disabledBackgroundColor: Colors.green.withOpacity(0.4),
        disabledForegroundColor: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.green, width: 2.0),
        minimumSize: const Size(200.0, 56.0),
        disabledForegroundColor: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(200.0, 56.0),
        disabledForegroundColor: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
  );

  static ThemeData get buttonStyleTheme => ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 8.0,
        shadowColor: Colors.green,
        backgroundColor: Colors.green,
        disabledBackgroundColor: Colors.green.withOpacity(0.4),
        disabledForegroundColor: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.green, width: 1.5),
        disabledForegroundColor: Colors.grey,
        foregroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
  );

  static ThemeData get customHeightWithButton => ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 8.0,
        shadowColor: Colors.green,
        minimumSize: const Size(double.infinity, 56.0),
        backgroundColor: Colors.green,
        disabledBackgroundColor: Colors.green.withOpacity(0.4),
        disabledForegroundColor: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.green, width: 1.5),
        minimumSize: const Size(double.infinity, 56.0),
        disabledForegroundColor: Colors.grey,
        foregroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    ),
  );

  static ThemeData get googleFormTheme => theme.copyWith(
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff1872E9), width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff1872E9), width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
  );

  static ThemeData get lightGreyFormTheme => theme.copyWith(
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      fillColor: Colors.grey.withOpacity(0.1),
      filled: true,
      hintStyle: TextStyle(color: Colors.grey.withOpacity(0.4)),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
  );
}



// // import '/auth/firebase_auth/auth_util.dart';
// // import '/backend/backend.dart';
// // import '/components/empty_comp_widget.dart';
// // import '/components/textfield_litre_comp_widget.dart';
// // import '/flutter_flow/flutter_flow_icon_button.dart';
// // import '/flutter_flow/flutter_flow_theme.dart';
// // import '/flutter_flow/flutter_flow_util.dart';
// // import '/flutter_flow/flutter_flow_widgets.dart';
// // import 'package:styled_divider/styled_divider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:collection/collection.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter/services.dart';
// // import 'package:flutter_spinkit/flutter_spinkit.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:provider/provider.dart';
//
// // import 'daily_milk_distribution_screen_model.dart';
// // export 'daily_milk_distribution_screen_model.dart';
//
// class DailyMilkDistributionScreenWidget extends StatefulWidget {
//   const DailyMilkDistributionScreenWidget({
//     Key? key,
//     required this.isMorning,
//   }) : super(key: key);
//
//   final bool? isMorning;
//
//   @override
//   _DailyMilkDistributionScreenWidgetState createState() =>
//       _DailyMilkDistributionScreenWidgetState();
// }
//
// class _DailyMilkDistributionScreenWidgetState
//     extends State<DailyMilkDistributionScreenWidget> {
//   // late DailyMilkDistributionScreenModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     // _model = createModel(context, () => DailyMilkDistributionScreenModel());
//
//     // On page load action.
//     SchedulerBinding.instance.addPostFrameCallback((_) async {
//       // _model.userCountResult = await queryUsersRecordCount(
//       //   queryBuilder: (usersRecord) => usersRecord.where(
//       //     'role',
//       //     isEqualTo: FFAppConstants.userRole,
//       //   ),
//       // );
//       // setState(() {
//       //   _model.totalUserCount = _model.userCountResult!;
//       // });
//     });
//     //
//     // WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
//     // if (isiOS) {
//     //   SystemChrome.setSystemUIOverlayStyle(
//     //     SystemUiOverlayStyle(
//     //       statusBarBrightness: Theme.of(context).brightness,
//     //       systemStatusBarContrastEnforced: true,
//     //     ),
//     //   );
//     // }
//     //
//     // context.watch<FFAppState>();
//
//     return Scaffold(
//       key: scaffoldKey,
//       // backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       appBar: AppBar(
//         // backgroundColor: FlutterFlowTheme.of(context).secondary,
//         automaticallyImplyLeading: false,
//         // title: Text(
//         //   FFLocalizations.of(context).getText(
//         //     '50zpjljr' /* Daily Distribute */,
//         //   ),
//         //   style: FlutterFlowTheme.of(context).headlineMedium.override(
//         //     fontFamily: 'Poppins',
//         //     color: Colors.white,
//         //     fontSize: 22,
//         //   ),
//         // ),
//         actions: [],
//         centerTitle: false,
//         elevation: 2,
//       ),
//       body: SafeArea(
//         top: true,
//         child: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               border: Border.all(
//                 // color: FlutterFlowTheme.of(context).secondaryText,
//                 width: 1,
//               ),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text("Customer's Details",
//                   // FFLocalizations.of(context).getText(
//                   //   '79niob3q' /* Customer's Details */,
//                   // ),
//                   // style: FlutterFlowTheme.of(context).bodyLarge.override(
//                   //   fontFamily: 'Poppins',
//                   //   fontWeight: FontWeight.w500,
//                   // ),
//                 ),
//                 // StyledDivider(
//                 //   thickness: 1,
//                 //   color: FlutterFlowTheme.of(context).secondaryText,
//                 //   lineStyle: DividerLineStyle.dashed,
//                 // ),
//                 Container(
//                   width: double.infinity,
//                   height: MediaQuery.sizeOf(context).height * 0.8,
//                   child: Padding(
//                     padding:
//                     EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
//                     child: PageView.builder(
//                       physics: const NeverScrollableScrollPhysics(),
//                       controller: _model.pageViewController ??=
//                           PageController(
//                               initialPage:
//                               min(0, containerVar.length - 1)),
//                       scrollDirection: Axis.horizontal,
//                       itemCount: containerVar.length,
//                       itemBuilder: (context, containerVarIndex) {
//                         final containerVarItem =
//                         containerVar[containerVarIndex];
//                         return Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(
//                               8, 8, 8, 8),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             crossAxisAlignment:
//                             CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Expanded(
//                                     flex: 2,
//                                     child: Text(
//                                       // "Name :",
//                                       // FFLocalizations.of(context)
//                                       //     .getText(
//                                       //   '0i2pc707' /* Name : */,
//                                       // ),
//                                       // style:
//                                       // FlutterFlowTheme.of(context)
//                                       //     .bodyMedium,
//                                     ),
//                                   ),
//                                   Expanded(
//                                     flex: 4,
//                                     child: Text(
//                                       containerVarItem.displayName,
//                                       maxLines: 2,
//                                       style:
//                                       FlutterFlowTheme.of(context)
//                                           .bodyMedium,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Padding(
//                                 padding:
//                                 EdgeInsetsDirectional.fromSTEB(
//                                     0, 8, 0, 0),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Expanded(
//                                       flex: 2,
//                                       child: Text(
//                                         FFLocalizations.of(context)
//                                             .getText(
//                                           'irywrwnq' /* Address : */,
//                                         ),
//                                         style: FlutterFlowTheme.of(
//                                             context)
//                                             .bodyMedium,
//                                       ),
//                                     ),
//                                     Expanded(
//                                       flex: 4,
//                                       child: Text(
//                                         containerVarItem.address,
//                                         maxLines: 3,
//                                         style: FlutterFlowTheme.of(
//                                             context)
//                                             .bodyMedium,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               StyledDivider(
//                                 thickness: 1,
//                                 color: FlutterFlowTheme.of(context)
//                                     .secondaryText,
//                                 lineStyle: DividerLineStyle.dashed,
//                               ),
//                               if (widget.isMorning == true)
//                                 Text(
//                                   FFLocalizations.of(context).getText(
//                                     'kvr77i1o' /* Morning Milk */,
//                                   ),
//                                   style: FlutterFlowTheme.of(context)
//                                       .titleLarge,
//                                 ),
//                               if (widget.isMorning == true)
//                                 TextfieldLitreCompWidget(
//                                   key: Key(
//                                       'Key0ve_${containerVarIndex}_of_${containerVar.length}'),
//                                   isMorning: true,
//                                 ),
//                               if (widget.isMorning == false)
//                                 StyledDivider(
//                                   thickness: 1,
//                                   color: FlutterFlowTheme.of(context)
//                                       .secondaryText,
//                                   lineStyle: DividerLineStyle.dashed,
//                                 ),
//                               if (widget.isMorning == false)
//                                 Text(
//                                   FFLocalizations.of(context).getText(
//                                     'ld7mc3oz' /* Evening Milk */,
//                                   ),
//                                   style: FlutterFlowTheme.of(context)
//                                       .titleLarge,
//                                 ),
//                               if (widget.isMorning == false)
//                                 TextfieldLitreCompWidget(
//                                   key: Key(
//                                       'Keynic_${containerVarIndex}_of_${containerVar.length}'),
//                                   isMorning: false,
//                                 ),
//                               Spacer(),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(),
//                                     child: Visibility(
//                                       visible: _model
//                                           .pageViewCurrentIndex !=
//                                           0,
//                                       child: FlutterFlowIconButton(
//                                         borderRadius: 20,
//                                         borderWidth: 1,
//                                         buttonSize: 40,
//                                         fillColor:
//                                         FlutterFlowTheme.of(
//                                             context)
//                                             .secondary,
//                                         icon: Icon(
//                                           Icons.chevron_left,
//                                           color: FlutterFlowTheme.of(
//                                               context)
//                                               .primary,
//                                           size: 24,
//                                         ),
//                                         onPressed: () async {
//                                           setState(() {
//                                             FFAppState()
//                                                 .dailyMilkMorningTextFieldText =
//                                             '-';
//                                             FFAppState()
//                                                 .dailyMilkEveningTextfieldText =
//                                             '-';
//                                             FFAppState()
//                                                 .isMilkUpdated =
//                                             false;
//                                           });
//                                           await _model
//                                               .pageViewController
//                                               ?.nextPage(
//                                             duration: Duration(
//                                                 milliseconds: 300),
//                                             curve: Curves.ease,
//                                           );
//                                         },
//                                       ),
//                                     ),
//                                   ),
//                                   if ((_model.pageViewCurrentIndex +
//                                       1) <
//                                       _model.totalUserCount)
//                                     Align(
//                                       alignment: AlignmentDirectional(
//                                           1.00, 0.00),
//                                       child: FlutterFlowIconButton(
//                                         borderColor:
//                                         Colors.transparent,
//                                         borderRadius: 20,
//                                         borderWidth: 1,
//                                         buttonSize: 40,
//                                         fillColor:
//                                         FlutterFlowTheme.of(
//                                             context)
//                                             .secondary,
//                                         icon: Icon(
//                                           Icons.chevron_right,
//                                           color: FlutterFlowTheme.of(
//                                               context)
//                                               .primary,
//                                           size: 24,
//                                         ),
//                                         onPressed: () async {
//                                           if (FFAppState()
//                                               .isMilkUpdated ==
//                                               true) {
//                                             var monthlyUserMilkDetailsRecordReference =
//                                             MonthlyUserMilkDetailsRecord
//                                                 .collection
//                                                 .doc();
//                                             await monthlyUserMilkDetailsRecordReference
//                                                 .set(
//                                                 createMonthlyUserMilkDetailsRecordData(
//                                                   pricePerLitre:
//                                                   containerVarItem
//                                                       .milkPriceLiter,
//                                                   userRef:
//                                                   containerVarItem
//                                                       .reference,
//                                                   createdAt:
//                                                   getCurrentTimestamp,
//                                                   year: dateTimeFormat(
//                                                     'yyyy',
//                                                     getCurrentTimestamp,
//                                                     locale:
//                                                     FFLocalizations.of(
//                                                         context)
//                                                         .languageCode,
//                                                   ),
//                                                   month: dateTimeFormat(
//                                                     'MM',
//                                                     getCurrentTimestamp,
//                                                     locale:
//                                                     FFLocalizations.of(
//                                                         context)
//                                                         .languageCode,
//                                                   ),
//                                                   morningMilkLtr: FFAppState()
//                                                       .dailyMilkMorningTextFieldText,
//                                                   eveningMilkLtr: FFAppState()
//                                                       .dailyMilkEveningTextfieldText,
//                                                   isMorning:
//                                                   widget.isMorning,
//                                                   day: dateTimeFormat(
//                                                     'dd',
//                                                     getCurrentTimestamp,
//                                                     locale:
//                                                     FFLocalizations.of(
//                                                         context)
//                                                         .languageCode,
//                                                   ),
//                                                 ));
//                                             _model.monthlyMilkRefResult =
//                                                 MonthlyUserMilkDetailsRecord
//                                                     .getDocumentFromData(
//                                                     createMonthlyUserMilkDetailsRecordData(
//                                                       pricePerLitre:
//                                                       containerVarItem
//                                                           .milkPriceLiter,
//                                                       userRef:
//                                                       containerVarItem
//                                                           .reference,
//                                                       createdAt:
//                                                       getCurrentTimestamp,
//                                                       year:
//                                                       dateTimeFormat(
//                                                         'yyyy',
//                                                         getCurrentTimestamp,
//                                                         locale: FFLocalizations.of(
//                                                             context)
//                                                             .languageCode,
//                                                       ),
//                                                       month:
//                                                       dateTimeFormat(
//                                                         'MM',
//                                                         getCurrentTimestamp,
//                                                         locale: FFLocalizations.of(
//                                                             context)
//                                                             .languageCode,
//                                                       ),
//                                                       morningMilkLtr:
//                                                       FFAppState()
//                                                           .dailyMilkMorningTextFieldText,
//                                                       eveningMilkLtr:
//                                                       FFAppState()
//                                                           .dailyMilkEveningTextfieldText,
//                                                       isMorning:
//                                                       widget
//                                                           .isMorning,
//                                                       day:
//                                                       dateTimeFormat(
//                                                         'dd',
//                                                         getCurrentTimestamp,
//                                                         locale: FFLocalizations.of(
//                                                             context)
//                                                             .languageCode,
//                                                       ),
//                                                     ),
//                                                     monthlyUserMilkDetailsRecordReference);
//                                           }
//                                           setState(() {
//                                             FFAppState()
//                                                 .dailyMilkMorningTextFieldText =
//                                             '-';
//                                             FFAppState()
//                                                 .dailyMilkEveningTextfieldText =
//                                             '-';
//                                             FFAppState()
//                                                 .isMilkUpdated =
//                                             false;
//                                           });
//                                           await _model
//                                               .pageViewController
//                                               ?.nextPage(
//                                             duration: Duration(
//                                                 milliseconds: 300),
//                                             curve: Curves.ease,
//                                           );
//
//                                           setState(() {});
//                                         },
//                                       ),
//                                     ),
//                                   if ((_model.pageViewCurrentIndex +
//                                       1) ==
//                                       _model.totalUserCount)
//                                     FFButtonWidget(
//                                       onPressed: () async {
//                                         if (FFAppState()
//                                             .isMilkUpdated ==
//                                             true) {
//                                           var monthlyUserMilkDetailsRecordReference =
//                                           MonthlyUserMilkDetailsRecord
//                                               .collection
//                                               .doc();
//                                           await monthlyUserMilkDetailsRecordReference
//                                               .set(
//                                               createMonthlyUserMilkDetailsRecordData(
//                                                 pricePerLitre:
//                                                 containerVarItem
//                                                     .milkPriceLiter,
//                                                 userRef: containerVarItem
//                                                     .reference,
//                                                 createdAt:
//                                                 getCurrentTimestamp,
//                                                 year: dateTimeFormat(
//                                                   'yyyy',
//                                                   getCurrentTimestamp,
//                                                   locale:
//                                                   FFLocalizations.of(
//                                                       context)
//                                                       .languageCode,
//                                                 ),
//                                                 month: dateTimeFormat(
//                                                   'MM',
//                                                   getCurrentTimestamp,
//                                                   locale:
//                                                   FFLocalizations.of(
//                                                       context)
//                                                       .languageCode,
//                                                 ),
//                                                 morningMilkLtr: FFAppState()
//                                                     .dailyMilkMorningTextFieldText,
//                                                 eveningMilkLtr: FFAppState()
//                                                     .dailyMilkEveningTextfieldText,
//                                                 isMorning:
//                                                 widget.isMorning,
//                                                 day: dateTimeFormat(
//                                                   'dd',
//                                                   getCurrentTimestamp,
//                                                   locale:
//                                                   FFLocalizations.of(
//                                                       context)
//                                                       .languageCode,
//                                                 ),
//                                               ));
//                                           _model.monthlyMilkRefResult2 =
//                                               MonthlyUserMilkDetailsRecord
//                                                   .getDocumentFromData(
//                                                   createMonthlyUserMilkDetailsRecordData(
//                                                     pricePerLitre:
//                                                     containerVarItem
//                                                         .milkPriceLiter,
//                                                     userRef:
//                                                     containerVarItem
//                                                         .reference,
//                                                     createdAt:
//                                                     getCurrentTimestamp,
//                                                     year:
//                                                     dateTimeFormat(
//                                                       'yyyy',
//                                                       getCurrentTimestamp,
//                                                       locale: FFLocalizations.of(
//                                                           context)
//                                                           .languageCode,
//                                                     ),
//                                                     month:
//                                                     dateTimeFormat(
//                                                       'MM',
//                                                       getCurrentTimestamp,
//                                                       locale: FFLocalizations.of(
//                                                           context)
//                                                           .languageCode,
//                                                     ),
//                                                     morningMilkLtr:
//                                                     FFAppState()
//                                                         .dailyMilkMorningTextFieldText,
//                                                     eveningMilkLtr:
//                                                     FFAppState()
//                                                         .dailyMilkEveningTextfieldText,
//                                                     isMorning: widget
//                                                         .isMorning,
//                                                     day:
//                                                     dateTimeFormat(
//                                                       'dd',
//                                                       getCurrentTimestamp,
//                                                       locale: FFLocalizations.of(
//                                                           context)
//                                                           .languageCode,
//                                                     ),
//                                                   ),
//                                                   monthlyUserMilkDetailsRecordReference);
//                                         }
//                                         setState(() {
//                                           FFAppState()
//                                               .dailyMilkMorningTextFieldText =
//                                           '-';
//                                           FFAppState()
//                                               .dailyMilkEveningTextfieldText =
//                                           '-';
//                                           FFAppState().isMilkUpdated =
//                                           false;
//                                         });
//                                         context.safePop();
//
//                                         setState(() {});
//                                       },
//                                       text:
//                                       FFLocalizations.of(context)
//                                           .getText(
//                                         'b26rt20d' /* Finish */,
//                                       ),
//                                       options: FFButtonOptions(
//                                         height: 40,
//                                         padding: EdgeInsetsDirectional
//                                             .fromSTEB(24, 0, 24, 0),
//                                         iconPadding:
//                                         EdgeInsetsDirectional
//                                             .fromSTEB(0, 0, 0, 0),
//                                         color: FlutterFlowTheme.of(
//                                             context)
//                                             .secondary,
//                                         textStyle: FlutterFlowTheme
//                                             .of(context)
//                                             .titleSmall
//                                             .override(
//                                           fontFamily: 'Poppins',
//                                           color: Colors.white,
//                                         ),
//                                         elevation: 3,
//                                         borderSide: BorderSide(
//                                           color: Colors.transparent,
//                                           width: 1,
//                                         ),
//                                         borderRadius:
//                                         BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Text(
//                                     FFLocalizations.of(context)
//                                         .getText(
//                                       'x6ckpl3m' /* current page index */,
//                                     ),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                   Text(
//                                     valueOrDefault<String>(
//                                       _model.pageViewCurrentIndex
//                                           .toString(),
//                                       'N/a',
//                                     ),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Text(
//                                     FFLocalizations.of(context)
//                                         .getText(
//                                       'v2xbuqgw' /* forward */,
//                                     ),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                   Text(
//                                     (_model.pageViewCurrentIndex + 1)
//                                         .toString(),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                   Text(
//                                     FFLocalizations.of(context)
//                                         .getText(
//                                       'lhqx2819' /* < */,
//                                     ),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                   Text(
//                                     valueOrDefault<String>(
//                                       _model.totalUserCount
//                                           .toString(),
//                                       'N/A',
//                                     ),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Text(
//                                     FFLocalizations.of(context)
//                                         .getText(
//                                       '7uw16qjd' /* finish */,
//                                     ),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                   Text(
//                                     (_model.totalUserCount - 1)
//                                         .toString(),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Text(
//                                     FFLocalizations.of(context)
//                                         .getText(
//                                       '2evzizqo' /* total user count */,
//                                     ),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                   Text(
//                                     valueOrDefault<String>(
//                                       _model.totalUserCount
//                                           .toString(),
//                                       'N/A',
//                                     ),
//                                     style:
//                                     FlutterFlowTheme.of(context)
//                                         .bodyMedium,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 )
//                 // Builder(
//                 //   builder: (context) {
//                 //     final containerVar =
//                 //     containerUsersRecordList.toList();
//                 //     if (containerVar.isEmpty) {
//                 //       return Center(
//                 //         child: EmptyCompWidget(),
//                 //       );
//                 //     }
//                 //     return ;
//                 //   },
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// // import '/auth/firebase_auth/auth_util.dart';
// // import '/backend/backend.dart';
// // import '/components/empty_comp_widget.dart';
// // import '/components/textfield_litre_comp_widget.dart';
// // import '/flutter_flow/flutter_flow_icon_button.dart';
// // import '/flutter_flow/flutter_flow_theme.dart';
// // import '/flutter_flow/flutter_flow_util.dart';
// // import '/flutter_flow/flutter_flow_widgets.dart';
// // import 'daily_milk_distribution_screen_widget.dart'
// //     show DailyMilkDistributionScreenWidget;
// // import 'package:styled_divider/styled_divider.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:collection/collection.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/scheduler.dart';
// // import 'package:flutter/services.dart';
// // import 'package:flutter_spinkit/flutter_spinkit.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:provider/provider.dart';
//
// // class DailyMilkDistributionScreenModel
// //     extends FlutterFlowModel<DailyMilkDistributionScreenWidget> {
// //   ///  Local state fields for this page.
// //
// //   String morningLitre = '-';
// //
// //   String eveningLitre = '-';
// //
// //   int totalUserCount = 0;
// //
// //   ///  State fields for stateful widgets in this page.
// //
// //   final unfocusNode = FocusNode();
// //   // Stores action output result for [Firestore Query - Query a collection] action in daily_milk_distribution_screen widget.
// //   int? userCountResult;
// //   // State field(s) for PageView widget.
// //   PageController? pageViewController;
// //
// //   int get pageViewCurrentIndex => pageViewController != null &&
// //       pageViewController!.hasClients &&
// //       pageViewController!.page != null
// //       ? pageViewController!.page!.round()
// //       : 0;
// //   // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
// //   MonthlyUserMilkDetailsRecord? monthlyMilkRefResult;
// //   // Stores action output result for [Backend Call - Create Document] action in Button widget.
// //   MonthlyUserMilkDetailsRecord? monthlyMilkRefResult2;
// //
// //   /// Initialization and disposal methods.
// //
// //   void initState(BuildContext context) {}
// //
// //   void dispose() {
// //     unfocusNode.dispose();
// //   }
// //
// // /// Action blocks are added here.
// //
// // /// Additional helper methods are added here.
// // }
