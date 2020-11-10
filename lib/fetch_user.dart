import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:test_creativeitem_api/user.dart';

Future<User> fetchUser() async {
  final response =
  await http.get('http://creativeitem.com/demo/test2/api/user/userdata?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJtZXNzYWdlIjoiTG9nZ2VkaW4gc3VjY2Vzc2Z1bGx5IiwidXNlcl9pZCI6IjEiLCJuYW1lIjoiSm9obiBEb2UiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwidXNlcl90eXBlIjoiYWRtaW4iLCJhZGRyZXNzIjpudWxsLCJwaG9uZSI6bnVsbCwiZ2VuZGVyIjpudWxsLCJzdGF0dXMiOiIxIiwidmFsaWRpdHkiOnRydWV9.fk5OWOPPuiU8O5bs082Q7vEAUbCO5-2JQPYW5pL-uJ4&fbclid=IwAR3KHgSuJ9Wvi2gBGvye3LTy6jZgsTltBJHBOQcPdxF4LCwP9DYsj_pmX3w');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return User.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}