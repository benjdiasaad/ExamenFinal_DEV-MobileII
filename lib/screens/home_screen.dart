import 'package:flutter/material.dart';
import 'package:student_coloco/screens/main_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  String _coor;
  String _budget;
  String _comm;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildCoor() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Tapez vos Coordonées'),
      maxLines: 3,
      validator: (String value) {
        if (value.isEmpty) {
          return 'les Coordonées sont obligatoire';
        }

        return null;
      },
      onSaved: (String value) {
        _coor = value;
      },
    );
  }

  Widget _buildBudget() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Budget'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Budget is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _budget = value;
      },
    );
  }


  Widget _buildComm() {
    return TextFormField(
      maxLines: 3,
      decoration: InputDecoration(labelText: 'Commentaire'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Commentaire is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _comm = value;
      },
    );
  }

  

  

  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Disposez votre Demande")),
      drawer: MainDrawer(),
      resizeToAvoidBottomPadding: false,
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCoor(),
              _buildBudget(),
              _buildComm(),
              SizedBox(height: 50),
               RaisedButton(
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                onPressed: () {
                  if (!_formKey.currentState.validate()) {
                    return;
                  }

                  _formKey.currentState.save();

                  print(_coor);
                  print(_budget);
                  print(_comm);
                  
                  
                  //Send to API
                },
              )
            ],
          ),
          ),
        ),
      ),
    );
  }
}
