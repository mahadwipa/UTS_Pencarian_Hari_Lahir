import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'rumus.dart';
import 'profil.dart';

class InputAPK extends StatefulWidget {
  @override
  _InputAPKState createState() => _InputAPKState();
}

class _InputAPKState extends State<InputAPK> {
  int a = 0;
  int b = 0;
  int c = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('HARI KELAHIRAN'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_outline),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfil()),
                );
              },
            )
          ],
          bottom: PreferredSize(
              child: Container(
                color:Colors.purple[500],
                height: 4.0,
              ),
              preferredSize: null
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(),
                padding: EdgeInsets.all(50),
                color: Colors.lightBlue[500],
                child: Column(
                  children: <Widget>[
                    Text('Pencarian Hari Lahir', style: TextStyle(color: Colors.white, fontSize: 17.0,fontWeight: FontWeight.w500),),
                    Text('Saptawara dan Pancawara', style: TextStyle(color: Colors.white, fontSize: 17.0,fontWeight: FontWeight.w500),),
                    Text('Berdasarkan Berdasarkan Tanggal Lahir', style: TextStyle(color: Colors.white, fontSize: 17.0,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only( ),
                padding: EdgeInsets.all(25),
                color: Colors.lightBlue,
                child: Text('Masukan Tanggal Lahir :', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 17.0,fontWeight: FontWeight.w500),),

              ),

              Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              a = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              labelText: "Tanggal",
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(50.0) ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              b = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              labelText: "Bulan",
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(50.0) )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              c = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 4,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              labelText: "Tahun",
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(50.0) )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
              ),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only( top:50, left: 70,right: 70,bottom: 20),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OutputAPK(vara: a, varb: b, varc: c)),
                    );
                  },
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white,

                  child: Text(
                    'HITUNG',
                    style:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 45,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              'By Mahadwipa',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),
            ),
          ),
          //elevation: 0,
        ),
      );
  }
}