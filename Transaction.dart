import 'package:flutter/material.dart';
import 'package:bitcoin_flutter/bitcoin_flutter.dart';
import 'package:bitcoin_flutter/src/models/networks.dart' as NETWORKS;
import 'package:bitcoin_flutter/src/ecpair.dart' show ECPair;
import 'package:bitcoin_flutter/src/payments/p2pkh.dart' show P2PKH, P2PKHData;
import "package:pointycastle/digests/sha256.dart";
import 'dart:convert';
 
rng (int number) { return utf8.encode('zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'); }
final testnet = NETWORKS.testnet;
 final keyPair = ECPair.makeRandom(network: testnet, rng: rng);
 final wif = keyPair.toWIF();
var wallet = Wallet.fromWIF(wif);
final address = new P2PKH(data: new P2PKHData(pubkey: keyPair.publicKey), network: testnet).data.address;

//String pubk = wallet.pubKey;
//String privk = wallet.privKey;

sendFunction(String target,int amount)
{
      final user = ECPair.fromWIF(wif);
      final txb = new TransactionBuilder();

      txb.setVersion(1);
      txb.addInput('61d520ccb74288c96bc1a2b20ea1c0d5a704776dd0164a396efec3ea7040349d', 0); // user's previous transaction output, has 15000 satoshis
      txb.addOutput(target, amount);//targets adress
      txb.sign(0, user);

} 



class Transaction extends StatefulWidget 
{
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {

   @override
  Widget build(BuildContext context) {
  

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ultralight Beam'),
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>
            [
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Transaction'),
                      new Text('Amount'),
                      new Text('Contact'),
                      //transactionn(),
                      new SelectableText('Testnet is $address'),
                     // new Text('Public key is : $pubk'),
                      //new Text('Private key is : $privk')

                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                    buttonGrp()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class buttonGrp extends StatefulWidget {
  @override
  _buttonGrpState createState() => _buttonGrpState();
}

class _buttonGrpState extends State<buttonGrp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row
        (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.blueAccent,
          onPressed: () 
          {
            /*...*/
            //sendFunction("",120000);
          },
            child: Text(
            "Send",
            style: TextStyle(fontSize: 20.0),
          ),
        ),

          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: ()
            {
              /*...*/
            },
            child: Text(
              "Request",
              style: TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}

