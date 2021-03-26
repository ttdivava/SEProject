import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'order_review.dart';
import 'payment_method_properties.dart';
import 'shipping.dart';

// Define a custom Form widget.
class PaymentMethodForm extends StatefulWidget {
  final String title;

  PaymentMethodForm({Key key, this.title}) : super(key: key);
  @override
  PaymentMethodFormState createState() {
    return PaymentMethodFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class PaymentMethodFormState extends State<PaymentMethodForm> {
  final _paymentIcon = Row(
    //pack the children closely together,
    children: [
      Image.asset('images/Cards.PNG',height: 92.0,
        width: 200.0,),

    ],
  );
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  // final numberController = new TextEditingController();
  var _autoValidate = false;
  var _paymentCardInfo = PaymentInfo();

  var _card = new PaymentInfo();
  var dividerField = const Divider(
    color: Colors.blue,
    height: 20,
    thickness: 1,
    indent: 20,
    endIndent: 0,
  );
  @override
  void initState() {
    super.initState();
    _paymentCardInfo.type = CardType.Others;
  }

  @override
  Widget build(BuildContext context) {
    const sizedBoxSpace = SizedBox(
      height: 30.0,
    );
    return Scaffold(
        body: Form(
            key: _formKey,
            autovalidate: _autoValidate,
            child: Scrollbar(
              child: ListView(
                children: [
                  new AppBar(
                    centerTitle: true,
                    backgroundColor: Colors.black,
                    title: Text("Hyperion Controllers", style: TextStyle(color: Colors.white)),

                  ),
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Divider(
                    color: Colors.black,
                    height: 20,
                    thickness: 2.5,
                    endIndent: 0,
                  ),
                  Text('All Transaction are secured and encrypted.',
                      textAlign: TextAlign.start),
                  dividerField,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Credit Card'),
                      _paymentIcon,
                      Text(' and more...')
                    ],
                  ),
                  dividerField,
                  sizedBoxSpace,
                  TextFormField(
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Enter name on card',
                          labelText: 'Name on card'),
                      // The validator receives the text that the user has entered.
                      onSaved: (String value) {
                        _card.nameOnCard = value;
                      },
                      keyboardType: TextInputType.text,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return Strings.fieldReq;
                        }
                        return null;
                      }),
                  sizedBoxSpace,
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Enter card number',
                      labelText: 'Card Number',
                    ),
                    keyboardType: TextInputType.number,
                    maxLengthEnforcement: MaxLengthEnforcement.none,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      new LengthLimitingTextInputFormatter(19),
                      new CardNumberInputFormatter()
                    ],
                    onSaved: (String value) {
                      print('onSaved = $value');
                      _paymentCardInfo.cardNumber = value;
                      // CardProperties.getCleanedNumber(value);
                    },
                    // The validator receives the text that the user has entered.
                    validator: CardProperties.validateCardNum,
                  ),
                  sizedBoxSpace,
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Enter number behind the card',
                      labelText: 'CVV',
                    ),
                    // The validator receives the text that the user has entered.
                    validator: CardProperties.validate_cvv,
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      _paymentCardInfo.cvv = int.parse(value);
                    },
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      new LengthLimitingTextInputFormatter(4)
                    ],
                  ),
                  sizedBoxSpace,
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      filled: true,
                      hintText: 'Enter expiration date MM/YY',
                      labelText: 'Exp Date',
                    ),
                    // The validator receives the text that the user has entered.
                    validator: CardProperties.validateDate,
                    keyboardType: TextInputType.datetime,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      new LengthLimitingTextInputFormatter(4),
                      new CardMonthInputFormatter(),
                    ],
                    onSaved: (value) {
                      List<int> expiryDate =
                      CardProperties.getExpiryDate(value);
                      _paymentCardInfo.month = expiryDate[0];
                      _paymentCardInfo.year = expiryDate[1];
                    },
                  ),
                  dividerField,
                  sizedBoxSpace,
                  ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, otherwise false.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Payment Card info is valid. Processing Data')));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderReviewScreen()),
                        );
                      } else {
                        setState(() {
                          _autoValidate = true;
                        });
                      }
                    },
                    child: Text('Next'),
                  ),
                  sizedBoxSpace,
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    Navigator.pop(context, MaterialPageRoute(builder: (Context) => ShippingInfo()));
                      },
                    child: Text('Back'),
                  )
                ],
              ),
            )));
    // Build a Form widget using the _formKey created above.
    //return
  }
}
