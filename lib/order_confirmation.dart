import 'package:flutter/material.dart';

class OrderConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thankyoutext = Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Text('Thank you for your order!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          )),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('Hyperion Controllers'),
        ),
        body: ListView(padding: const EdgeInsets.all(12), children: [
          Center(
            child: thankyoutext,
          ),
          const Divider(
            color: Color(0xFF000066),
            height: 20,
            thickness: 3,
            //indent: 20,
            //endIndent: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Order Number:',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '${DateTime.now().second+14395372}',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Order Date:',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  // DateFormat.yMd(),
                  //pubspec.yaml
                  // dependencies:
                  //intl:^0.16.1
                  //DateTime.now().toString(),
                  '03-26-2021',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 8, 40, 8),
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            decoration: new BoxDecoration(
              border: Border.all(
                color: Color(0xFF000066),
              ),
              gradient: new LinearGradient(
                colors: <Color>[
                  Color(0xFFECEDED),
                  Color(0xFFC4C4C4),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Order Total',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                  ),
                ),
                Text(
                  // '\$${tx.amount}',
                  '\$166.63',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Payment Method',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                  ),
                ),
                Text(
                  'Credit Card',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Column(
              children: [
                Text(
                  'Shipping Method',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                  ),
                ),
                Text(
                  'First Class Shipping',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color(0xFF000066),
            height: 20,
            thickness: 3,
            //indent: 20,
            //endIndent: 20,
          ),
          Text(
            'A confirmation email has been sent to taylor.lauters@jacks.sdstate.edu',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Questions about your order?',
          ),
          Text(
            'Call us: (xxx) xxx-xxxx',
          ),
          Row(
            children: [
              Text(
                'Email us: ',
              ),
              Text(
                'orders@hyperioncontrolers.com',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

}