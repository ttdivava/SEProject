import 'package:flutter/material.dart';
import 'functions.dart';
import 'shipping.dart';

void main(){
  runApp(new MaterialApp(

    theme: ThemeData(
      primaryColor: Colors.black,
    ),
    home: new HomePage(),
  ));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[

              new AppBar(
                centerTitle: true,
                backgroundColor: Colors.black,
                title: Text("Hyperion Controllers"),

              ),

              new Image(
                image: new AssetImage('images/Hyperion-Logo-1-2274.jpg'),
                height: 160.0,
                width: 340.0,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new ControlVersion(),
                )),
                child: new Container(
                  height: 120.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  child: new Stack(
                      children: <Widget>[
                        playStationBar,
                        playStationThumbnail,
                        playStationBarText,
                      ]
                  ),
                ),
              ),

              GestureDetector(
                onTap: () => Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new ComingSoon(),
                )),
                child: new Container(
                  height: 120.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  child: new Stack(
                      children: <Widget>[
                        xboxBar,
                        xboxThumbnail,
                        xboxBarText,
                      ]
                  ),
                ),
              ),

              GestureDetector(
                onTap: () => Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new ComingSoon(),
                )),
                child: new Container(
                  height: 120.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  child: new Stack(
                      children: <Widget>[
                        switchBar,
                        switchThumbnail,
                        switchBarText,
                      ]
                  ),
                ),
              ),

            ],
          ),
        )

    );

  }
}

class ComingSoon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page Coming Soon"),
      ),
      body: new Center(
          child: new Image(
            image: new AssetImage('images/comingsoon.png'),
            height: 350.0,
            width: 600.0,
          )
      ),
    );
  }
}

class ControlVersion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[

              new AppBar(
                centerTitle: true,
                title: Text("Hyperion Controllers"),
              ),

              new Image(
                image: new AssetImage('images/Hyperion-Logo-1-2274.jpg'),
                height: 160.0,
                width: 340.0,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new ComingSoon(),
                )),
                child: new Container(
                  height: 120.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  child: new Stack(
                      children: <Widget>[
                        psBar,
                        ps5Thumbnail,
                        ps5Text,
                      ]
                  ),
                ),
              ),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Description())),

                child: new Container(
                  height: 120.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  child: new Stack(
                      children: <Widget>[
                        psBar,
                        ps4Thumbnail,
                        ps4Text,
                      ]
                  ),
                ),
              ),

              GestureDetector(
                onTap: () => Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new ComingSoon(),
                )),
                child: new Container(
                  height: 120.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  child: new Stack(
                      children: <Widget>[
                        psBar,
                        ps3Thumbnail,
                        ps3Text,
                      ]
                  ),
                ),
              ),

            ],
          ),
        )

    );

  }
}

class Description extends StatefulWidget {
  @override
  _DescriptionPage createState() => _DescriptionPage();
}


class _DescriptionPage extends State<Description> {

  String _selectedColor = 'Jet Black';
  String _selectedQty = 'Qty (1)';

  static const _colors = [
    'Jet Black',
    'Glacier White',
    'Magma Red',
    'Gold'
  ];

  static const _qty = [
    'Qty (1)',
    'Qty (2)',
    'Qty (3)',
    'Qty (4)'
  ];

  get isEnabled => true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
          child: Column(
            children: <Widget>[

              new AppBar(
                  centerTitle: true,
                  title: Text("Hyperion Controllers")
              ),

              new Image(
                image: new AssetImage('images/controller.png'),
                height: 180.0,
                width: 360.0,
              ),

              new Text("DualShock 4 Wireless Controller for Playstation 4",
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.black)
              ),
              new Container(height: 30),
              new Text("\$59.99",
                  style: new TextStyle (fontSize: 25.0, color: Colors.black)
              ),
              new Text("Receive 20% off order total with purchase of 2 or more controllers",
                  style: new TextStyle (fontSize: 13.0, color: Colors.red)
              ),

              Container(
                padding: EdgeInsets.fromLTRB(10.0, 13.0, 10.0, 19.0),

                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      itemHeight: 50.0,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: isEnabled ? Colors.black : Colors.grey[700]
                      ),

                      value: _selectedColor,
                      items: _colors.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (selectedItem) => setState(() => _selectedColor = selectedItem,
                      )

                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(10.0, 13.0, 10.0, 19.0),

                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      itemHeight: 50.0,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: isEnabled ? Colors.black : Colors.grey[700]
                      ),

                      value: _selectedQty,
                      items: _qty.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (selectedItem) => setState(() => _selectedQty = selectedItem,
                      )

                  ),
                ),
              ),

              Container(height: 10),
              new Text('The DualShock Wireless controller for PS4 gives you what you want in your gaming from precision control over your games to sharing your greatest gameplay moments with your friends while providing easy rechargeing so you are always ready',
                  style: new TextStyle (fontSize: 16.0)
              ),

              new Container(height: 20),
              new Text('In Stock',
                style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.green),
                textAlign: TextAlign.left,
              ),

              ButtonTheme(
                minWidth: 200.0,
                height: 50.0,

                child: RaisedButton(
                  color: Colors.grey,
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home()))
                  },
                  child: new Text('Customize'),
                ),
              )
            ],
          )

      ),
    );

  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _selectedGrip = 'No Grip';
  String _selectedSkins = 'No Skin';
  String _selectedWire = 'Wireless';
  String _selectedType = 'Standard';

  static const _grips = [
    'No Grip',
    '+\$15.00 Grip'

  ];

  static const _skins = [
    'No Skin',
    '+\$10.00 Blue Skin',
    '+\$10.00 Red Skin',
    '+\$10.00 Purple Skin',
    '+\$10.00 Green Skin',
  ];

  static const _wire = [
    'Wireless',
    '-\$10.00 No Wire'
  ];

  static const _pro = [
    'Standard',
  ];

  final bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(

          children: <Widget> [

            new Image(
              image: new AssetImage('images/controller.png'),
              height: 180.0,
              width: 360.0,
            ),

            new Image(
              image: new AssetImage('images/customs.png'),
              height: 100.0,
              width: 360.0,
            ),


            Container(
              padding: EdgeInsets.fromLTRB(10.0, 13.0, 10.0, 19.0),

              child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      itemHeight: 50.0,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: isEnabled ? Colors.black : Colors.grey[700]
                      ),

                      value: _selectedGrip,
                      items: _grips.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (selectedItem) => setState(() => _selectedGrip = selectedItem,
                      )

                  )
              ),



            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 19.0, 10.0, 13.0),


              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isExpanded: true,
                    itemHeight: 50,
                    style: TextStyle(
                        fontSize: 17.0,
                        color: isEnabled ? Colors.black : Colors.grey[700]
                    ),
                    value: _selectedSkins,
                    items: _skins.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (selectedItem) => setState(() => _selectedSkins = selectedItem,
                    )

                ),
              ),



            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),


              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isExpanded: true,
                    itemHeight: 50,
                    style: TextStyle(
                        fontSize: 17.0,
                        color: isEnabled ? Colors.black : Colors.grey[700]
                    ),
                    value: _selectedWire,
                    items: _wire.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (selectedItem) => setState(() => _selectedWire = selectedItem,
                    )

                ),
              ),



            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 13.0, 10.0, 19.0),


              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isExpanded: true,
                    itemHeight: 50,
                    style: TextStyle(
                        fontSize: 17.0,
                        color: isEnabled ? Colors.black : Colors.grey[700]
                    ),
                    value: _selectedType,
                    items: _pro.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (selectedItem) => setState(() => _selectedType = selectedItem,
                    )

                ),
              ),



            ),
            ButtonTheme(
              minWidth: 200.0,
              height: 50.0,

              child: RaisedButton(
                color: Colors.grey,
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ShoppingCart()))
                },
                child: new Text('Continue to Cart'),
              ),
            )

          ],



        ));
  }
}

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCart createState() => _ShoppingCart();
}


class _ShoppingCart extends State<ShoppingCart>{

  String _selectedType = '2';

  static const _pro = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];

  final bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
            child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  new AppBar(
                      centerTitle: true,
                      backgroundColor: Colors.black,
                      title: Text("Hyperion Controllers", style: TextStyle(color: Colors.white))),

                  new Image(
                    image: new AssetImage('images/Hyperion-Logo-1-2274.jpg'),
                    height: 160.0,
                    width: 340.0,
                  ),
                  Text("Shopping Cart",
                      textAlign: TextAlign.left,
                      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black)),

                  Container(

                    height: 124.0,
                    margin: new EdgeInsets.only(left: 10.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xFFBDBDBD),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(8.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.blue[900],
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),

                    child:
                    new Stack(
                        children: <Widget>[
                          controllerThumbnail,
                          customControllers
                        ]
                    ),
                  ),
                  Container(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new ButtonTheme(
                        minWidth: 400.0,
                        height: 50.0,

                        child: RaisedButton(
                          color: Colors.grey,
                          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()))
                          },
                          child: new Text('Continue Shopping'),
                        ),
                      )
                    ],
                  ),
                  Container(height: 10.0),
                  Container(


                    height: 124.0,
                    margin: new EdgeInsets.only(left: 10.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xFFBDBDBD),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(8.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.blue[900],
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),

                    child:
                    new Stack(
                        children: <Widget>[
                          estimatedSummaryText,
                        ]
                    ),
                  ),
                  Container(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      new ButtonTheme(
                        minWidth: 400.0,
                        height: 50.0,

                        child: RaisedButton(
                          color: Colors.grey,
                          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ShippingInfo()))
                          },
                          child: new Text('Checkout'),
                        ),
                      )
                    ],
                  ),
                ]
            )
        )
    );
  }
}


final controllerThumbnail = new Container(
  margin: new EdgeInsets.symmetric(
      vertical: 16.0
  ),
  alignment: FractionalOffset.centerLeft,
  child: new Image(
    image: new AssetImage('images/controller.png'),
    height: 92.0,
    width: 92.0,
  ),
);

final customControllers = new Container(
  margin: new EdgeInsets.fromLTRB(100.0, 16.0, 100.0, 16.0),
  child: new Flexible(
      child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(height: 3.0),
            Expanded(child:
            new Text("Dual Shock Wireless",
                textAlign: TextAlign.left,
                style: new TextStyle(fontSize: 14.0, color: Colors.black))),
            new Container(height: 3.0),
            new Text("For PS4 - Jet Black",
                textAlign: TextAlign.left,
                style: new TextStyle(fontSize: 14.0, color: Colors.black)),
            new Container(height: 3.0),
            Expanded(child:
            new Text("Customization Cost: +\$25.00",
                textAlign: TextAlign.left,
                style: new TextStyle(fontSize: 14.0, color: Colors.black))),
            new Container(height: 3.0),
            new Text("\$169.98",
                textAlign: TextAlign.left,
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)),


          ]
      )),
);

final estimatedSummaryText= new Container(
  //margin: new EdgeInsets.fromLTRB(140.0, 16.0, 100.0, 16.0),
  child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(height: 3.0),
        new Text("  Estimated Summary",
            textAlign: TextAlign.left,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black)),
        new Container(height: 3.0),
        new Text("  Order Total:          \$169.98",
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 16.0, color: Colors.black)),
        new Container(height: 3.0),
        new Text("  Delivery Total       Estimated at Checkout",
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 16.0, color: Colors.black)),
        new Container(height: 3.0),
        new Text("  Estimated Tax     \$7.65",
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 16.0, color: Colors.black)),
        new Container(height: 3.0),
        new Text("  Total                     \$177.63",
            textAlign: TextAlign.left,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.black)),
      ]
  ),
);