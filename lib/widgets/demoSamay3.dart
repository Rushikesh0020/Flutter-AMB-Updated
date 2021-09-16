// import 'package:flutter/material.dart';
// import 'package:tgf_style_guide_v2/widgets/demoSamayFetch.dart';
// import '../models/user.dart';

// class DemoSamayApp extends StatefulWidget {
//   const DemoSamayApp({Key? key}) : super(key: key);

//   @override
//   _DemoSamayAppState createState() => _DemoSamayAppState();
// }

// class _DemoSamayAppState extends State<DemoSamayApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<User>(
//         future: UsersApi.getDemoSamay(),
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           List<Widget> children;
//           if (snapshot.hasData) {
//             children = <Widget>[
//               const Icon(
//                 Icons.check_circle_outline,
//                 color: Colors.green,
//                 size: 60,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 16),
//                 child: Text('Result: ${snapshot.data}'),
//               )
//             ];
//           } else if (snapshot.hasError) {
//             children = <Widget>[
//               const Icon(
//                 Icons.error_outline,
//                 color: Colors.red,
//                 size: 60,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 16),
//                 child: Text('Hello Error: ${snapshot.error}'),
//               )
//             ];
//           } else {
//             children = const <Widget>[
//               SizedBox(
//                 child: CircularProgressIndicator(),
//                 width: 60,
//                 height: 60,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 16),
//                 child: Text('Awaiting result...'),
//               )
//             ];
//           }
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: children,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }










// // //   Widget buildUsers(User? users) {
// // //     var _isSelected = false;
// // //     var selectChip = users?.samay404AM;
// // //     return FilterChip(
// // //       showCheckmark: false,
// // //       side: selectChip==true? BorderSide(width: 1.0, color: Color(0xFF312AFF).withOpacity(0.62)) : BorderSide(width: 1.0, color: Color(0xFF8A8A8A).withOpacity(0.62)),
  
// // //       label: Text('Hello'),
// // //       labelStyle: TextStyle(
// // //         color: Colors.black,
// // //         fontSize: 14.0,
// // //       ),
// // //       selected: _isSelected,
// // //       shape: RoundedRectangleBorder(
// // //         borderRadius: BorderRadius.circular(1.0),

// // //       ),
// // //       backgroundColor: selectChip==true  ? Color(0xFFC0BEFF).withOpacity(0.62) : Color(0xFFD4D4D4).withOpacity(0.32),
// // //       onSelected: (isSelected) {
// // //         setState(() {
          
// // //           selectChip = !selectChip!;
          
// // //           // if (widget.selectChip == true) {
// // //           //   // widget.selectChip = !widget.selectChip;
// // //           //   print('Alarm Initialted');
// // //           //   AndroidAlarmManager.periodic(
// // //           //       Duration(seconds: 60), alarmId, fireAlarm);
// // //           // } else {
// // //           //   AndroidAlarmManager.cancel(alarmId);
// // //           //   print('Alarm Timer Canceled');
// // //           // }
// // //         });
// // //       },
// // //       selectedColor: Color(0xFFC0BEFF).withOpacity(0.62),
      
// // //     );
// // //   }
// // // }
