import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main_drawer.dart';

//I use this link as reference for getting data -
// from  API https://flutter.dev/docs/cookbook/networking/fetch-data

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  String motpresident = 'Application pour aider les étudiants à faciliter leur recherche de co-location, '
      'L\'objectif est de mettre en œuvre une application mobile qui va gérer le partage des avis de co-locations '
      'entre les étudiants d’une université.';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "À propos de l'application",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
            SizedBox(height: 100.0),
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     
                    Text(
                      '$motpresident',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}