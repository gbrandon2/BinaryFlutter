import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DecaBin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Num>(
        create: (context) => Num(bin: "", dec: "0", binadec: true),
        child: Consumer<Num>(builder: (context, num, child) {
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
                        color:
                            Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                        child: new Text(
                            num.binadec ? "Binary->Decimal" : "Decimal->binary",
                            style: new TextStyle(fontSize: 20.0)),
                        onPressed: () {
                          num.binToDec();
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.centerRight,
                        child: Text(num.binadec ? '${num.bin}' : '${num.dec}',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(int.parse(
                                    "#FF5722".replaceAll('#', '0xff'))),
                                fontSize: 35)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.centerRight,
                        child: Text(num.binadec ? '${num.dec}' : '${num.bin}',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(int.parse(
                                    "#FF5722".replaceAll('#', '0xff'))),
                                fontSize: 35)),
                      ),
                    ),
                    num.binadec
                        ? decBin(BuildContext, num)
                        : decBin2(BuildContext, num),
                    Spacer(),
                    Flexible(
                      flex: 2,
                      child: SizedBox.expand(
                        child: RaisedButton(
                          color: Color(
                              int.parse("#0069C0".replaceAll('#', '0xff'))),
                          child: Text("CLEAR",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white)),
                          onPressed: () {
                            num.reset();
                          },
                        ),
                      ),
                    )
                  ]));
        }));
  }

  Widget decBin(BuildContextm, Num num) {
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
                num.incrementar("0");
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
                num.incrementar("1");
              },
            )))
      ])),
    );
  }

  Widget decBin2(BuildContext, Num num) {
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
                  num.sumar("9");
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
                  num.sumar("8");
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
                  num.sumar("7");
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
                  num.sumar("6");
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
                  num.sumar("5");
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
                  num.sumar("4");
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
                  num.sumar("3");
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
                  num.sumar("2");
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
                  num.sumar("1");
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
                  num.sumar("0");
                },
              )),
        ])),
      ]),
    );
  }
}

class Num extends ChangeNotifier {
  String bin;
  String dec;
  bool binadec;
  Num({this.bin, this.dec, this.binadec});

  void incrementar(String cont) {
    this.bin += cont;
    this.dec = int.parse(bin, radix: 2).toRadixString(10);
    notifyListeners();
  }

  void binToDec() {
    this.binadec = !this.binadec;
    notifyListeners();
  }

  void reset() {
    if (this.binadec) {
      this.bin = "";
      this.dec = "0";
    } else {
      this.dec = "";
      this.bin = "0";
    }
    notifyListeners();
  }

  void sumar(String cont) {
    dec += cont;
    bin = int.parse(dec, radix: 10).toRadixString(2);
    notifyListeners();
  }
}
