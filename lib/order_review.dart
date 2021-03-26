import 'package:flutter/material.dart';
import 'paymentMethod.dart';
import 'order_confirmation.dart';

class OrderReviewScreen extends StatelessWidget {
  //final cardInfo;
  final String productName = "DUALSHOCK 4 wireless controller for PS4",
      price = "\$59.99",
      quantity = "2",
      subtotal = "+ \$169.98",
      productIndex = '1',
      taxesAndFees = "\$7.65",
      shippingPrice = "\$12.99",
      total = "\$166.63",
      discountPrice = '- \$23.99';

  final bool isDiscount = false;
  final RestorableBoolN checkboxDiscount = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text("Hyperion Controllers", style: TextStyle(color: Colors.white))),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                new Image(
                  image: new AssetImage('images/Hyperion-Logo-1-2274.jpg'),
                  height: 160.0,
                  width: 340.0,
                ),
                Container(height: 20),
                Table(
                  columnWidths: {
                    // 0: FixedColumnWidth(.5),
                    1: FlexColumnWidth(.7)
                  },
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      Text('Product Name'),
                      Text('Price'),
                      Text('Qty'),
                      Text('Subbtotal')
                    ]),
                    TableRow(children: [
                      Text(
                        productName,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        price,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        quantity,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        subtotal,
                        textAlign: TextAlign.end,
                      )
                    ]),
                  ],
                ),
                Divider(),
                Text(
                  'Discount',
                  textAlign: TextAlign.start,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Buy one get one 20%',
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      discountPrice,
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Taxes & Fees',
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      taxesAndFees,
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      shippingPrice,
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      total,
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
                Divider(),

                Container(height:40),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => OrderConfirm()));
                    },
                    child: Text('Submit Order')),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentMethodForm()));
                    },
                    child: Text('Edit Payment'))
              ],
            )));
  }
}

