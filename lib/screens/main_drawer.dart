import 'package:flutter/material.dart';

import './details_screen.dart';
import './main_drawer.dart';

class MainDrawer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Drawer(
     child:Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(6),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                       margin: EdgeInsets.only(
                      top: 25,
                      bottom: 10),
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        /*image: DecorationImage(
                          image: AssetImage('assets/space-2.jpg'),
                          fit: BoxFit.fill,
                        ),*/
                        ),
                    ), 
                    Text("Student Co-Location",
                    style: TextStyle(
                      
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                    )
                   
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              dense:true,
              onTap: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.new_releases),
              title: Text('Actualités'),
              dense:true,
              onTap: () {
                
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('FPBM en Bref'),
              dense:true,
              onTap: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Mot du président'),
              dense:true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Evènements FPBM'),
              dense:true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                ));
              },
            ),
            ListTile(

              title: Text('Communiquer', style: TextStyle(color: Colors.lightBlue[800], fontSize: 15, fontWeight: FontWeight.bold)),
              dense:true,
            ),
            ListTile(
              leading: Icon(Icons.laptop),
              title: Text('Web'),
              dense:true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.alternate_email),
              title: Text('FPBM Facebook'),
              dense:true,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Authentification'),
              dense:true,
              onTap: () {
               },
            ),
            
          ],
        )
    );
  }
}
