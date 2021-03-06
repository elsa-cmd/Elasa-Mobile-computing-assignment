
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  final DocumentSnapshot post;
  DetailPage({this.post});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post.data['user name']),
      ),
      body: Container(
          child: ListView(
            children: ListTile.divideTiles(context: context,
                tiles: [
                  ListTile(
                    title: Text('User Name'),
                    subtitle: Text(widget.post.data['user name']),
                  ),
                  ListTile(
                    title: Text('First Name'),
                      subtitle : Text(widget.post.data['Fname'])
                  ),
                  ListTile(
                    title: Text('Last Name'),
                    subtitle: Text(widget.post.data['Lname']),
                  ),
                  ListTile(
                    title: Text('Gender'),
                    subtitle: Text(widget.post.data['Gender']),
                  ),
                  ListTile(
                    title: Text('mobile'),
                      subtitle: Text(widget.post.data['mobile'])
                  ),
            ]  ).toList(),
            //title: Text(widget.post.data['user name']),
          ),

      ),
    );
  }
}
