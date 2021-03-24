import 'package:flutter/material.dart';
import 'paymentMethod.dart';

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

final playStationThumbnail = new Container(
    margin: new EdgeInsets.symmetric(
      vertical: 16.0
    ),
   alignment: FractionalOffset.centerLeft,
   child: new Image(
     image: new AssetImage('images/Playstation.PNG'),
     height: 92.0,
     width: 92.0,
         ),
  );

final playStationBar = new Container(
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
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
  );

final playStationBarText= new Container(
      margin: new EdgeInsets.fromLTRB(140.0, 16.0, 100.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 3.0),
          new Text("Shop Playstation Controllers",
            textAlign: TextAlign.left,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0, color: Colors.black)),
        ]
      ),
);
  
final xboxThumbnail = new Container(
    margin: new EdgeInsets.symmetric(
      vertical: 16.0
    ),
   alignment: FractionalOffset.centerLeft,
   child: new Image(
     image: new AssetImage('images/Xbox.PNG'),
     height: 92.0,
     width: 92.0,
         ),
  );

  final xboxBar = new Container(
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
    decoration: new BoxDecoration(
      color: new Color(0xFFBDBDBD),
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(  
          color: Colors.green[600],
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
  );

final xboxBarText= new Container(
      margin: new EdgeInsets.fromLTRB(140.0, 16.0, 100.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text("Shop Xbox Controllers",
            textAlign: TextAlign.left,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black)),
        ]
      ),
);

  final switchThumbnail = new Container(
    margin: new EdgeInsets.symmetric(
      vertical: 16.0
    ),
   alignment: FractionalOffset.centerLeft,
   child: new Image(
     image: new AssetImage('images/Switch.PNG'),
     height: 92.0,
     width: 92.0,
         ),
  );

  final switchBar = new Container(
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
    decoration: new BoxDecoration(
      color: new Color(0xFFBDBDBD),
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(  
          color: Colors.red[600],
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
  );

final switchBarText= new Container(
      margin: new EdgeInsets.fromLTRB(140.0, 16.0, 100.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text("Shop Switch Controllers",
            textAlign: TextAlign.left,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0, color: Colors.black)),
        ]
      ),
);

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

final ps3Thumbnail = new Container(
    margin: new EdgeInsets.symmetric(
      vertical: 16.0
    ),
   alignment: FractionalOffset.centerLeft,
   child: new Image(
     image: new AssetImage('images/PS3.PNG'),
     height: 92.0,
     width: 92.0,
         ),
  );

final ps3Text= new Container(
      margin: new EdgeInsets.fromLTRB(140.0, 16.0, 100.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 3.0),
          new Text("Shop Playstation 3 Controllers",
            textAlign: TextAlign.left,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black)),
        ]
      ),
);

final ps4Thumbnail = new Container(
    margin: new EdgeInsets.symmetric(
      vertical: 16.0
    ),
   alignment: FractionalOffset.centerLeft,
   child: new Image(
     image: new AssetImage('images/PS4.PNG'),
     height: 92.0,
     width: 92.0,
         ),
  );

final ps4Text= new Container(
      margin: new EdgeInsets.fromLTRB(140.0, 16.0, 100.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 3.0),
          new Text("Shop Playstation 4 Controllers",
            textAlign: TextAlign.left,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black)),
        ]
      ),
);

final ps5Thumbnail = new Container(
    margin: new EdgeInsets.symmetric(
      vertical: 16.0
    ),
   alignment: FractionalOffset.centerLeft,
   child: new Image(
     image: new AssetImage('images/PS5.PNG'),
     height: 92.0,
     width: 92.0,
         ),
  );

final ps5Text= new Container(
      margin: new EdgeInsets.fromLTRB(140.0, 16.0, 100.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 3.0),
          new Text("Shop Playstation 5 Controllers",
            textAlign: TextAlign.left,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black)),
        ]
      ),
);

final psBar = new Container(
    height: 124.0,
    margin: new EdgeInsets.only(left: 46.0),
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
  );

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

class ShippingInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget nameform = Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
    Widget streetform = Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
    Widget extralineform = Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
    Widget zipform = Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
    Widget cityform = Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
    Widget phoneform = Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
    Widget emailform = Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
    
    
    Widget country = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
      child: _buildTitleAsterisk('Country'),
    );
    
    Widget fullname = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
      child: _buildTitleAsterisk('Full Name'),
    );
    
    Widget streetaddress = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
      child: _buildTitleAsterisk('Street Address'),
    );
    
    Widget extraline = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
      child: Text(
        'Apt / Suite / Other',
        style: TextStyle(
              fontWeight: FontWeight.w900,
            )
      ),
    );
    
    Widget zipcity = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
        child: Row(
          // todo evenlyspaced?
            children: [
              Expanded(
                child: Column(
                  children: [
                  _buildTitleAsterisk('Zip Code'),
                  // todo insert form thing here
                    zipform,
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                  _buildTitleAsterisk('City'),
                  // todo insert form thing here
                    cityform,
                  ],
                ),
              ),
            ],
          ),
    );
    
    Widget state = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
      child: _buildTitleAsterisk('State'),
    );
    
    Widget phoneemail = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
        child: Row(
          // todo evenlyspaced?
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      child: Text( 'Phone Number',
                        //textAlign: TextAlign.left,
                        style: TextStyle(
                        fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                      
                  // todo insert form thing here
                    phoneform,
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                  _buildTitleAsterisk('Email'),
                  // todo insert form thing here
                    emailform,
                  ],
                ),
              ),
            ],
          ),
    );
    
    Widget shippingoptions = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
      child: Text(
        'Shipping Options',
        style: TextStyle(
              fontWeight: FontWeight.w900,
            )
      ),
    );
    
    Widget topayment = Container(
      padding: EdgeInsets.fromLTRB(0,10,0,0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.grey),
        child: Text('Continue to Payment'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Hyperion()));
        },
    )
    );
    
    return MaterialApp(
      //theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('Hyperion Controllers'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            country,
            Container(
              padding: EdgeInsets.fromLTRB(8,0,0,0),
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: <Color> [
                    Color(0xFFECEDED),
                    Color(0xFFC4C4C4),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: CountryDropStatefulWidget(),
            ),
            fullname,
            nameform,
            streetaddress,
            streetform,
            extraline,
            extralineform,
            zipcity,
            state,
            
            Container(
              padding: EdgeInsets.fromLTRB(8,0,0,0),
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: <Color> [
                    Color(0xFFECEDED),
                    Color(0xFFC4C4C4),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: StateDropStatefulWidget(),
            ),
            
            
            phoneemail,
            shippingoptions,
            
            Container(
              padding: EdgeInsets.fromLTRB(8,0,0,0),
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: <Color> [
                    Color(0xFFECEDED),
                    Color(0xFFC4C4C4),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: ShippingDropStatefulWidget(),
            ),
            topayment,
          ]
        ),
      ),
    );
  }
  
  
   Container _buildTitleAsterisk(String label) {
    return Container(
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w900,
            )
          ),
          Text(
            '*',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[500]
            ),
          ),
        ],
      ),
    );
  }
  
   
}


// stateful widget for state dropdown
class StateDropStatefulWidget extends StatefulWidget {

  const StateDropStatefulWidget({Key key}) : super(key: key); // Key? key
  @override
  _StateDropStatefulWidgetState createState() => _StateDropStatefulWidgetState();
}

// stateful widget for country dropdown
class CountryDropStatefulWidget extends StatefulWidget {

  const CountryDropStatefulWidget({Key key}) : super(key: key); // Key? key
  @override
  _CountryDropStatefulWidgetState createState() => _CountryDropStatefulWidgetState();
}

// stateful widget for shipping dropdown
class ShippingDropStatefulWidget extends StatefulWidget {

  const ShippingDropStatefulWidget({Key key}) : super(key: key); // Key? key
  @override
  _ShippingDropStatefulWidgetState createState() => _ShippingDropStatefulWidgetState();
}

// private state class for with DropStatefulWidget
class _StateDropStatefulWidgetState extends State<StateDropStatefulWidget> {

  String dropdownValue = 'Select State';
  @override
  Widget build(BuildContext context) {

  return DropdownButton<String>(
    value: dropdownValue,
    icon: const Icon(Icons.arrow_drop_down),
    iconSize: 30,
    elevation: 16,
    isExpanded: true,
    style: const TextStyle(color: Colors.black87),
    underline: Container(
      height: 2,
    ),
    onChanged: (String newValue) { // String?

      setState(() {

        dropdownValue = newValue; // newValue!
      });
    },
    items: <String>['Select State', 'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'].map<DropdownMenuItem<String>>((String value) {

    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  );
 }
}

// private state class for with DropStatefulWidget
class _ShippingDropStatefulWidgetState extends State<ShippingDropStatefulWidget> {

  String dropdownValue = 'First Class Shipping';
  @override
  Widget build(BuildContext context) {

  return DropdownButton<String>(
    value: dropdownValue,
    icon: const Icon(Icons.arrow_drop_down),
    iconSize: 30,
    elevation: 16,
    isExpanded: true,
    style: const TextStyle(color: Colors.black87),
    underline: Container(
      height: 2,
    ),
    onChanged: (String newValue) { // String?

      setState(() {

        dropdownValue = newValue; // newValue!
      });
    },
    items: <String>['First Class Shipping'].map<DropdownMenuItem<String>>((String value) {

    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  );
 }
}
  
// private state class for with DropStatefulWidget
class _CountryDropStatefulWidgetState extends State<CountryDropStatefulWidget> {

  String dropdownValue = 'United States';
  @override
  Widget build(BuildContext context) {

  return DropdownButton<String>(
    value: dropdownValue,
    icon: const Icon(Icons.arrow_drop_down),
    iconSize: 30,
    elevation: 16,
    isExpanded: true,
    style: const TextStyle(color: Colors.black87),
    underline: Container(
      height: 2,
    ),
    onChanged: (String newValue) { // String?

      setState(() {

        dropdownValue = newValue; // newValue!
      });
    },
    items: <String>['Select Country', 'Afghanistan', 'Arland Islands', 'Albania', 'Algeria', 'American Samoa', 'Andorra', 'Angola', 'Anguilla', 'Antarctica', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas, The', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda', 'Bonaire, Saint Eustatius and Saba', 'Bosnia and Herzegovina', 'Botswana', 'Bouvet Island', 'Brazil', 'British Indian Ocean Territory', 'Brunei Darussalam', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde', 'Cayman Islands', 'Central African Republic', 'Chad', 'Chile', 'China', 'Christmas Island', 'Cocos (Keeling) Islands', 'Colombia', 'Comoros', 'Congo', 'Congo, The Democratic Republic of the', 'Cook Islands', 'Costa Rica', "Cote D'ivoire", 'Croatia', 'Curacao', 'Cyprus', 'Czech Republic', 'Denmark', 'Djibouti', 'Dominican Republic', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Ethiopia', 'Falkland Islands (Malvinas)', 'Faroe Islands', 'Fiji', 'Finland', 'France', 'French Guiana', 'French Polynesia', 'French Southern Territories', 'Gabon', 'Gambia, The', 'Georgia', 'Germany', 'Ghana', 'Gibraltar', 'Greece', 'Greenland', 'Grenada', 'Guadeloupe', 'Guam', 'Guatemala', 'Guernsey', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Hati', 'Heard Island and the McDonald Islands', 'Holy See', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iraq', 'Ireland', 'Isle of Man', 'Israel', 'Italy', 'Jamacia', 'Japan', 'Jersey', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Kosovo', 'Kuwait', 'Kyrgyzstan', "Lao People's Democratic Republic", 'Latvia', 'Lebabon', 'Lesotho', 'Liberia', 'Libya', 'Leichtenstein', 'Lithuania', 'Luxembourg', 'Macao', 'Macedonia, The Former Yugoslav Republic of', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Martinique', 'Mauritania', 'Mauritius', 'Mayotte', 'Mexico', 'Micronesia, Federated States of', 'Monaco', 'Mongolia', 'Montenegro', 'Montserrat', 'Morocco', 'Mozambique', 'Myanmar', 'Nambia', 'Nauru', 'Nepal', 'Netherlands', 'Netherlands Antilles', 'New Caledonia', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'Northern Mariana Islands', 'Norway', 'Oman', 'Pakistan', 'Palau', 'Palestinian Territories', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines', 'Pitcairn', 'Poland', 'Portugal', 'Puerto Rico', 'Quatar', 'Republic of Korea', 'Reunion', 'Romania', 'Russian Federation', 'Rwanda', 'Saint Barthelemy', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Martin', 'Saint Oierre and Miquelon', 'Saint Vincent and the Grenadines', 'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Singapore', 'Sint Maarten', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Sonmalia', 'South Africa', 'South Georgia and the South Sandwich Islands', 'Spain', 'Sri Lanka', 'Suriname', 'Svalbard and Jan Mayen', 'Swaziland', 'Sweden', 'Switzerland', 'Taiwan', 'Tajikistan', 'Tanzania, United Republic of', 'Thailand', 'Timor-leste', 'Togo', 'Tokelau', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Turks and Caicos Islands', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'United States Minor Outlying Islands', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Venezuela', 'Vietnam', 'Virgin Islands, British', 'Virgin Islands, U.S.', 'Wallis and Futuna', 'Western Sahara', 'Yemen', 'Zambia', 'Zimbabwe'].map<DropdownMenuItem<String>>((String value) {

    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  );
 }
}

class Hyperion extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyperion',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Hyperion Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
   
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentMethodForm()));
              },
              child: Text(
                'Go To Payment',
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
      ),
    );
  }
}

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






  
