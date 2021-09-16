import 'package:flutter/material.dart';
import 'package:tgf_style_guide_v2/widgets/demoSamayFetch.dart';
import '../models/user.dart';

class DemoSamayApp extends StatefulWidget {
  const DemoSamayApp({Key? key}) : super(key: key);

  @override
  _DemoSamayAppState createState() => _DemoSamayAppState();
}

class _DemoSamayAppState extends State<DemoSamayApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<User>(
        future: UsersApi.getDemoSamay(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final users = snapshot.data;

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return Center(child: Text("Some Error Occured! Don't Worry"));
              } else if (snapshot.hasData) {
                return buildUsers(users);
              }
          }
          throw 'My New Error!';
        },
      ),
    );
  }

  Widget buildUsers(User? users) {
    var _isSelected = false;
    var selectChip = users?.samay404AM;
    return FilterChip(
      showCheckmark: false,
      side: selectChip == true
          ? BorderSide(width: 1.0, color: Color(0xFF312AFF).withOpacity(0.62))
          : BorderSide(width: 1.0, color: Color(0xFF8A8A8A).withOpacity(0.62)),
      label: Text('Hello'),
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
      ),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1.0),
      ),
      backgroundColor: selectChip == true
          ? Color(0xFFC0BEFF).withOpacity(0.62)
          : Color(0xFFD4D4D4).withOpacity(0.32),
      onSelected: (isSelected) {
        setState(() {
          selectChip = !selectChip!;
        });
      },
      selectedColor: Color(0xFFC0BEFF).withOpacity(0.62),
    );
  }
}
