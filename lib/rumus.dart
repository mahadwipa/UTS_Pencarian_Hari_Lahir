import 'package:flutter/material.dart';


class OutputAPK extends StatelessWidget {
  OutputAPK({@required this.vara, @required this.varb, @required this.varc});
  final int vara;
  int varb;
  final int varc;
  String hpanca;
  String hsapta;
  String salah;
  int oldvarb;
  int newvarb;

  @override
  Widget build(BuildContext context) {
    if (varc % 4 == 0 ){
      if (varb == 1){
        oldvarb = 6;
      }
      else if (varb == 2){
        oldvarb = 2;
      }
      else if (varb == 3){
        oldvarb = 3;
      }
      else if (varb == 4){
        oldvarb = 6;
      }
      else if (varb == 5){
        oldvarb = 1;
      }
      else if (varb == 6){
        oldvarb = 4;
      }
      else if (varb == 7){
        oldvarb = 6;
      }
      else if (varb == 8){
        oldvarb = 2;
      }
      else if (varb == 9){
        oldvarb = 5;
      }
      else if (varb == 10){
        oldvarb = 0;
      }
      else if (varb == 11){
        oldvarb = 3;
      }
      else if (varb == 12){
        oldvarb = 5;
      }
      else{
        print("Silahkan masukan bulan dengan benar");
      }
    }
    else{
      if (varb == 1){
        oldvarb = 0;
      }
      else if (varb == 2){
        oldvarb = 3;
      }
      else if (varb == 3){
        oldvarb = 3;
      }
      else if (varb == 4){
        oldvarb = 6;
      }
      else if (varb == 5){
        oldvarb = 1;
      }
      else if (varb == 6){
        oldvarb = 4;
      }
      else if (varb == 7){
        oldvarb = 6;
      }
      else if (varb == 8){
        oldvarb = 2;
      }
      else if (varb == 9){
        oldvarb = 5;
      }
      else if (varb == 10){
        oldvarb = 0;
      }
      else if (varb == 11){
        oldvarb = 3;
      }
      else if (varb == 12){
        oldvarb = 5;
      }
      else{
        print("Silahkan masukan bulan dengan benar");
      }
    }


    if (varc % 4 == 0 ){
      if (varb == 1){
        newvarb = 4;
      }
      else if (varb == 2){
        newvarb = 0;
      }
      else if (varb == 3){
        newvarb = 4;
      }
      else if (varb == 4){
        newvarb = 0;
      }
      else if (varb == 5){
        newvarb = 0;
      }
      else if (varb == 6){
        newvarb = 1;
      }
      else if (varb == 7){
        newvarb = 1;
      }
      else if (varb == 8){
        newvarb = 2;
      }
      else if (varb == 9){
        newvarb = 3;
      }
      else if (varb == 10){
        newvarb = 3;
      }
      else if (varb == 11){
        newvarb = 4;
      }
      else if (varb == 12){
        newvarb = 4;
      }
      else{
        print("Silahkan masukan bulan dengan benar");
      }
    }
    else{
      if (varb == 1){
        newvarb = 0;
      }
      else if (varb == 2){
        newvarb = 1;
      }
      else if (varb == 3){
        newvarb = 4;
      }
      else if (varb == 4){
        newvarb = 0;
      }
      else if (varb == 5){
        newvarb = 0;
      }
      else if (varb == 6){
        newvarb = 1;
      }
      else if (varb == 7){
        newvarb = 1;
      }
      else if (varb == 8){
        newvarb = 2;
      }
      else if (varb == 9){
        newvarb = 3;
      }
      else if (varb == 10){
        newvarb = 3;
      }
      else if (varb == 11){
        newvarb = 4;
      }
      else if (varb == 12){
        newvarb = 4;
      }
      else{
        print("Silahkan masukan bulan dengan benar");
      }
    }

    int sapta = ((varc) + (varc ~/ 4) + vara + oldvarb)%7;
    if (sapta  == 0){
      hsapta = ("Sukra");
    }
    else if (sapta == 1){
      hsapta = ("Saniscara");
    }
    else if (sapta == 2){
      hsapta = ("Radite");
    }
    else if (sapta == 3){
      hsapta = ("Soma");
    }
    else if (sapta == 4){
      hsapta =("Anggara");
    }
    else if (sapta == 5){
      hsapta = ("Buda");
    }
    else if (sapta == 6){
      hsapta = ("Respati");
    }



    int panca = ((varc ~/ 4) + vara + newvarb)%5;
    if (panca  == 0) {
      hpanca = "Umanis";
    }
    else if (panca == 1) {
      hpanca = "Pahing";
    }
    else if (panca == 2) {
      hpanca = ("Pon");
    }
    else if (panca == 3){
      hpanca = ("Wage");
    }
    else if (panca == 4){
      hpanca = ("Kliwon");
    }


    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL'),
        bottom: PreferredSize(
            child: Container(
              color:Colors.blueGrey,
              height: 4.0,
            ),
            preferredSize: null
        ),
      ),
      body: Container(
        child:Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 180, right: 10, left: 10),
                padding: EdgeInsets.only(left:20, right: 15, top: 50, bottom: 50),
                decoration: BoxDecoration(
                    color: Colors.cyan[100],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text('Anda Lahir Pada', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.w500,),),
                      padding: EdgeInsets.only(left:100, right: 100),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 2,
                          )
                      ),
                    ),
                    Text(
                      "Tanggal $vara Bulan $varb Tahun $varc",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                    ),
                    Text(
                      "Saptawawra : $hsapta",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                    ),
                    Text(
                      "Pancawara : $hpanca",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),

      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          color: Colors.blue[500],
          child: Text('KEMBALI',
            style: TextStyle(
                fontSize: 20,
                    color: Colors.white
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}