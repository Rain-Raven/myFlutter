import 'package:flutter/material.dart';

class MaterialComponentsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Components"),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "FloatingActionButtonDemo",page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    //shape: BeveledRectangleBorder(
   //   borderRadius: BorderRadius.circular(30.0)
    //),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: (){},
    icon: Icon(Icons.add),
    label: Text("Add"),
    elevation: 0.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonDemo"),
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  String title;
  Widget page;

  ListItem({
    this.title,
    this.page
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=> page)
          );
      },
    );
  }
}