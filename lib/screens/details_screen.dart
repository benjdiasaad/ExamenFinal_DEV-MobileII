import 'package:flutter/material.dart';
import 'package:student_coloco/screens/main_drawer.dart';
//import 'package:image_picker/image_picker.dart';

class DetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailsScreenState();
  }
}

class DetailsScreenState extends State<DetailsScreen> {
  String _addr;
  String _sup;
  String _prix;
  String _wifi;
  String _phoneNumber;

/*  FileImage _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = FileImage(pickedFile.path);
    });
  }
*/
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildAddr() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Adresse du logement'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Adresse du logement is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _addr = value;
      },
    );
  }

  Widget _buildSup() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'La superficie'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Superficie is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _sup = value;
      },
    );
  }


  Widget _buildPrix() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Prix'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Prix is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _prix = value;
      },
    );
  }

  Widget _buildWifi() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Wifi ou lave-linge'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Wifi is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _wifi = value;
      },
    );
  }

  

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },
      
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Offres")),
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
              _buildAddr(),
              _buildSup(),
              _buildPrix(),
              _buildWifi(),
              _buildPhoneNumber(),
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

                  print(_addr);
                  print(_sup);
                  print(_prix);
                  print(_wifi);
                  
                  
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
