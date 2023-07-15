import 'package:flutter/material.dart';
import 'package:long_list_with_listview_builder/model.dart';

class Detail extends StatelessWidget {
  final People people; //obj from class people
  Detail(this.people); //construtor
  //
  Widget _widget(String label, String value) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: people.gender == 'Female' ? Colors.pink : Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(people.name),
        backgroundColor: people.gender == 'Female' ? Colors.pink : Colors.green,
      ),
      //body
      body: Column(
        children: <Widget>[
          Image(
            height: 200,
            width: 250,
            image: NetworkImage(
              people.photo,
            ),
            fit: BoxFit.cover,
          ),
          //widget build
          _widget('Name', people.name),
          _widget('Gender', people.gender),
          _widget('email:', people.email),
          _widget('Address', people.address),
        ],
      ),
    );
  }
}
