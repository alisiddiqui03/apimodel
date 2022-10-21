import 'package:apimodel/services/user_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
const  Home({ Key? key }) : super(key: key);
@override
State< Home> createState() => _HomeState();
}

class _HomeState extends State< Home> {
@override
Widget build(BuildContext context) {
return Scaffold(
      body:FutureBuilder(
        future: getUser(),
        builder: ((context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text('${snapshot.data[index].name}'),
                    subtitle: Text('${snapshot.data[index].email}'),
                    leading: Text('${snapshot.data[index].email}'),
                    trailing: Text('${snapshot.data[index].address}'),
                  );
                }));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
      }
}
