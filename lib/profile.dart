import 'package:flutter/material.dart';

const int itemcount = 10;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemcount,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text('item ${(index+1)}'),
          leading: Icon(Icons.person_2),
          trailing: Icon(Icons.select_all),
        );
      }
    );
  }
}