import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

// @GetMapping("/get/samay-sampana/{id}")


// Response body: {"id":1,"userId":1,"samay404AM":false,"samay505AM":false,"samay606AM":false,"samay707AM":false,"samay808AM":true,"samay909AM":false,"samay1010AM":false,"samay1111AM":false,"samay1212PM":false,"samay101PM":false,"samay202PM":true,"samay303PM":false,"samay404PM":true,"samay505PM":false,"samay606PM":false,"samay707PM":false,"samay808PM":true,"samay909PM":true,"samay1010PM":false,"samay1111PM":false,"samay1212AM":false}

var temp;

Future<Object> getSamayTimings() async {
  var url = Uri.parse('http://10.0.2.2:8080/tgf/get/samay-sampana/1');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  temp = jsonDecode(response.body);
  print(temp.length);
  print(temp['samay808PM']);
  return temp;
}
// userId = 23 
Future<void> postsamayTimings()
async {
  var url = Uri.parse('http://10.0.2.2:8080/tgf/samay-sampanna');
  var response = await http.post(url, body:
  {
    "userId":  1,
    "samay404AM":1,
    "samay505AM":0,
    "samay606AM":0,
    "samay707AM":0,
    "samay808AM":0,
    "samay909AM":0,
    "samay1010AM":0,
    "samay1111AM":0,
    "samay1212PM":0,
    "samay101PM":0,
    "samay202PM":0,
    "samay303PM":0,
    "samay404PM":0,
    "samay505PM":0,
    "samay606PM":0,
    "samay707PM":0,
    "samay808PM":0,
    "samay909PM":0,
    "samay1010PM":0,
    "samay1111PM":0,
    "samay1212AM":1,

  }
  );
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}

void main() {

//  getSamayTimings();
postsamayTimings();
  
}