// Use the functions provided here to authenticate the user...
import 'dart:convert';

import 'uris.dart';
import 'package:http/http.dart' as http;

Future signup(firstname, lastname, email, password) async {
  await http.post(UriCollection.postOnce, headers: {
    "headers": jsonEncode(["firstname", "lastname", "email", "password"]),
    "data": jsonEncode([firstname, lastname, email, password]),
    "table": "users",
  });
}
