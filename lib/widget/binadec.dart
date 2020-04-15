import 'package:flutter/material.dart';

class Binadec extends StatefulWidget {
  @override
  _BinadecState createState() => _BinadecState();
}

class _BinadecState extends State<Binadec> {
  String bin = "";
  String dec = "0";
  bool binadec = true;
  void incrementar(String cont) {
    setState(() {
      bin += cont;
      dec = int.parse(bin, radix: 2).toRadixString(10);
    });
  }

  void sumar(String cont) {
    setState(() {
      dec += cont;
      bin = int.parse(dec, radix: 10).toRadixString(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0), // exterior
                padding: const EdgeInsets.all(10.0), // interior

                alignment: Alignment.bottomLeft,
                child: RaisedButton(
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  child: new Text(
                    binadec?"Binary->Decimal":"Decimal->binary",
                      style: new TextStyle(fontSize: 20.0)),
                  onPressed: () {
                    setState(() {
                        
                      binadec = !binadec;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(binadec?'$bin':'$dec',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(
                              int.parse("#FF5722".replaceAll('#', '0xff'))),
                          fontSize: 35)),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(binadec?'$dec':'$bin',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(
                              int.parse("#FF5722".replaceAll('#', '0xff'))),
                          fontSize: 35)),
                ),
              ),
              binadec ? decBin(BuildContext) : decBin2(BuildContext),
              Spacer(),
              Flexible(
                flex: 2,
                child: SizedBox.expand(
                  child: RaisedButton(
                    color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                    child: Text("CLEAR",
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
                    onPressed: () {
                      setState(() {
                        if (binadec) {
                          bin = "";
                          dec = "0";
                        } else {
                          dec = "";
                          bin = "0";
                        }
                      });
                    },
                  ),
                ),
              )
            ]));
  }

  Widget decBin(BuildContext) {
    return Flexible(
      flex: 3,
      child: Container(
          child: Row(children: <Widget>[
        Expanded(
            flex: 2,
            child: SizedBox.expand(
                child: RaisedButton(
              color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
              child: Text("0",
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
              onPressed: () {
                incrementar("0");
              },
            ))),
        Spacer(),
        Expanded(
            flex: 2,
            child: SizedBox.expand(
                child: RaisedButton(
              color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
              child: Text("1",
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
              onPressed: () {
                incrementar("1");
              },
            )))
      ])),
    );
  }

  Widget decBin2(BuildContext) {
    return Flexible(
      flex: 5,
      child: Column(children: <Widget>[
        Container(
            child: Row(children: <Widget>[
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("9",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("9");
                },
              )),
          Spacer(),
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("8",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("8");
                },
              )),
          Spacer(),
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("7",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("7");
                },
              )),
        ])),
        Container(
            child: Row(children: <Widget>[
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("6",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("6");
                },
              )),
          Spacer(),
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("5",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("5");
                },
              )),
          Spacer(),
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("4",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("4");
                },
              )),
        ])),
        Container(
            child: Row(children: <Widget>[
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("3",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("3");
                },
              )),
          Spacer(),
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("2",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("2");
                },
              )),
          Spacer(),
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("1",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("1");
                },
              )),
        ])),
        Container(
            child: Row(children: <Widget>[
          Expanded(
              flex: 2,
              child: RaisedButton(
                color: Color(int.parse("#2196F3".replaceAll('#', '0xff'))),
                child: Text("0",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: () {
                  sumar("0");
                },
              )),
        ])),
      ]),
    );
  }
}
