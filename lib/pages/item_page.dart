import 'package:belanja/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;
  const ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Item Page"),
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child:
                    Text(tempItem.name + " : Rp " + tempItem.price.toString()),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text("Stock:  " + tempItem.stock.toString() + " pcs"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
