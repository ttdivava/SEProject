import 'package:flutter/material.dart';


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


/***********************************************/

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
