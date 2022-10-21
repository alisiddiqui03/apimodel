import 'package:apimodel/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

getUser() async {

var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
var response = await http.get(uri);
var data = jsonDecode(response.body);

List<UserModel> userlist = [];

for(var i in data){
userlist.add(UserModel.fromJson(i));
}
return userlist;
}