import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> getDataFromApi() async {
  var response = await http.get(Uri.parse(
      'mongodb+srv://Abdullah:Abdullah@cluster0.bbwdlkj.mongodb.net/program'));
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);

    List<Widget> widgets = [];
    for (var item in data) {
      widgets.add(Text(item['name']));
    }
    setState(() {
      _widgetList = widgets;
    });
  } else {
    throw Exception('Failed to load data from API');
  }
}
