import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'paymentMethod.dart';
import 'dropdown_shipping_widget.dart';
class Stringsx {
  static const String fieldReq = 'This field is required';
  }

class ShippingInfo extends StatefulWidget{

  ShippingInfo({Key key}): super(key:key);
  @override
  ShippingInfoState createState(){
    return ShippingInfoState();
  }
}

class ShippingInfoState extends State<ShippingInfo>{
  final _formKey= GlobalKey<FormState>();
  var _autoValidate = false;
  @override
  Widget build (BuildContext context){
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

    Widget nameform = Container(
      child: TextFormField(
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
          validator: (String value) {
            if (value.isEmpty || value == null) {
              return Stringsx.fieldReq;
            }
            return null;
          }),
    );
    Widget streetform = Container(
      child: TextFormField(
          textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),validator: (String value) {
        if (value.isEmpty || value == null) {
          return Stringsx.fieldReq;
        }
        return null;
      }
      ),
    );
    Widget extralineform = Container(
      child: TextFormField(
          textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),validator: (String value) {
        if (value.isEmpty || value == null) {
          return Stringsx.fieldReq;
        }
        return null;
      }
      ),
    );
    Widget zipform = Container(
      child: TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter> [
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
          validator: (String value) {
        if (value.isEmpty || value == null) {
          return Stringsx.fieldReq;
        }
        return null;
      }
      ),
    );
    Widget cityform = Container(
      child: TextFormField(
          textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        validator: (String value) {
        if (value.isEmpty || value == null) {
          return Stringsx.fieldReq;
        }
        return null;
      }
      ),
    );
    Widget phoneform = Container(
      child: TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),  inputFormatters: <TextInputFormatter> [
        FilteringTextInputFormatter.digitsOnly,
        new LengthLimitingTextInputFormatter(15),
      ],
        validator: (String value) {
          if (value.isEmpty || value == null) {
            return Stringsx.fieldReq;
          }
          return null;
        }
      ),
    );
    Widget emailform = Container(
      child: TextFormField(
          textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        validator: (String value) {
          if (value.isEmpty || value == null) {
            return Stringsx.fieldReq;
          }
          if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
            return 'Please a valid Email';
          }
            return null;
          }
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
            if(_formKey.currentState.validate()){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentMethodForm()));
            }
          },
        )
    );

    return Scaffold(

      body: Form(
        key: _formKey,
        autovalidate: _autoValidate,
        child : ListView(
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

    )
    );
  }
}
//
// class ShippingInfo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     Widget nameform = Container(
//       child: TextField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//     Widget streetform = Container(
//       child: TextField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//     Widget extralineform = Container(
//       child: TextField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//     Widget zipform = Container(
//       child: TextField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//     Widget cityform = Container(
//       child: TextField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//     Widget phoneform = Container(
//       child: TextField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//     Widget emailform = Container(
//       child: TextField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//
//
//     Widget country = Container(
//       padding: EdgeInsets.fromLTRB(0,10,0,0),
//       child: _buildTitleAsterisk('Country'),
//     );
//
//     Widget fullname = Container(
//       padding: EdgeInsets.fromLTRB(0,10,0,0),
//       child: _buildTitleAsterisk('Full Name'),
//     );
//
//     Widget streetaddress = Container(
//       padding: EdgeInsets.fromLTRB(0,10,0,0),
//       child: _buildTitleAsterisk('Street Address'),
//     );
//
//     Widget extraline = Container(
//       padding: EdgeInsets.fromLTRB(0,10,0,0),
//       child: Text(
//           'Apt / Suite / Other',
//           style: TextStyle(
//             fontWeight: FontWeight.w900,
//           )
//       ),
//     );
//
//     Widget zipcity = Container(
//       padding: EdgeInsets.fromLTRB(0,10,0,0),
//       child: Row(
//         // todo evenlyspaced?
//         children: [
//           Expanded(
//             child: Column(
//               children: [
//                 _buildTitleAsterisk('Zip Code'),
//                 // todo insert form thing here
//                 zipform,
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 _buildTitleAsterisk('City'),
//                 // todo insert form thing here
//                 cityform,
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//
//     Widget state = Container(
//       padding: EdgeInsets.fromLTRB(0,10,0,0),
//       child: _buildTitleAsterisk('State'),
//     );
//
//     Widget phoneemail = Container(
//       padding: EdgeInsets.fromLTRB(0,10,0,0),
//       child: Row(
//         // todo evenlyspaced?
//         children: [
//           Expanded(
//             child: Column(
//               children: [
//                 Container(
//                   child: Text( 'Phone Number',
//                     //textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w900,
//                     ),
//                   ),
//                 ),
//
//                 // todo insert form thing here
//                 phoneform,
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 _buildTitleAsterisk('Email'),
//                 // todo insert form thing here
//                 emailform,
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//
//     Widget shippingoptions = Container(
//       padding: EdgeInsets.fromLTRB(0,10,0,0),
//       child: Text(
//           'Shipping Options',
//           style: TextStyle(
//             fontWeight: FontWeight.w900,
//           )
//       ),
//     );
//
//     Widget topayment = Container(
//         padding: EdgeInsets.fromLTRB(0,10,0,0),
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(primary: Colors.grey),
//           child: Text('Continue to Payment'),
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentMethodForm()));
//           },
//         )
//     );
//
//     return MaterialApp(
//       //theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.black,
//           title: Text('Hyperion Controllers'),
//         ),
//         body: Form(
//           key: _formKey,
//
//         ) ListView(
//             padding: const EdgeInsets.all(12),
//             children: [
//               country,
//               Container(
//                 padding: EdgeInsets.fromLTRB(8,0,0,0),
//                 decoration: new BoxDecoration(
//                   gradient: new LinearGradient(
//                     colors: <Color> [
//                       Color(0xFFECEDED),
//                       Color(0xFFC4C4C4),
//                     ],
//                     begin: const FractionalOffset(0.0, 0.0),
//                     end: const FractionalOffset(0.0, 1.0),
//                     stops: [0.0, 1.0],
//                     tileMode: TileMode.clamp,
//                   ),
//                 ),
//                 child: CountryDropStatefulWidget(),
//               ),
//               fullname,
//               nameform,
//               streetaddress,
//               streetform,
//               extraline,
//               extralineform,
//               zipcity,
//               state,
//
//               Container(
//                 padding: EdgeInsets.fromLTRB(8,0,0,0),
//                 decoration: new BoxDecoration(
//                   gradient: new LinearGradient(
//                     colors: <Color> [
//                       Color(0xFFECEDED),
//                       Color(0xFFC4C4C4),
//                     ],
//                     begin: const FractionalOffset(0.0, 0.0),
//                     end: const FractionalOffset(0.0, 1.0),
//                     stops: [0.0, 1.0],
//                     tileMode: TileMode.clamp,
//                   ),
//                 ),
//                 child: StateDropStatefulWidget(),
//               ),
//
//
//               phoneemail,
//               shippingoptions,
//
//               Container(
//                 padding: EdgeInsets.fromLTRB(8,0,0,0),
//                 decoration: new BoxDecoration(
//                   gradient: new LinearGradient(
//                     colors: <Color> [
//                       Color(0xFFECEDED),
//                       Color(0xFFC4C4C4),
//                     ],
//                     begin: const FractionalOffset(0.0, 0.0),
//                     end: const FractionalOffset(0.0, 1.0),
//                     stops: [0.0, 1.0],
//                     tileMode: TileMode.clamp,
//                   ),
//                 ),
//                 child: ShippingDropStatefulWidget(),
//               ),
//               topayment,
//             ]
//         ),
//       ),
//     );
//   }
//
//
//   Container _buildTitleAsterisk(String label) {
//     return Container(
//       child: Row(
//         children: [
//           Text(
//               label,
//               style: TextStyle(
//                 fontWeight: FontWeight.w900,
//               )
//           ),
//           Text(
//             '*',
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.red[500]
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//
// }
//
//
// // stateful widget for state dropdown
// class StateDropStatefulWidget extends StatefulWidget {
//
//   const StateDropStatefulWidget({Key key}) : super(key: key); // Key? key
//   @override
//   _StateDropStatefulWidgetState createState() => _StateDropStatefulWidgetState();
// }
//
// // stateful widget for country dropdown
// class CountryDropStatefulWidget extends StatefulWidget {
//
//   const CountryDropStatefulWidget({Key key}) : super(key: key); // Key? key
//   @override
//   _CountryDropStatefulWidgetState createState() => _CountryDropStatefulWidgetState();
// }
//
// // stateful widget for shipping dropdown
// class ShippingDropStatefulWidget extends StatefulWidget {
//
//   const ShippingDropStatefulWidget({Key key}) : super(key: key); // Key? key
//   @override
//   _ShippingDropStatefulWidgetState createState() => _ShippingDropStatefulWidgetState();
// }
//
// // private state class for with DropStatefulWidget
// class _StateDropStatefulWidgetState extends State<StateDropStatefulWidget> {
//
//   String dropdownValue = 'Select State';
//   @override
//   Widget build(BuildContext context) {
//
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_drop_down),
//       iconSize: 30,
//       elevation: 16,
//       isExpanded: true,
//       style: const TextStyle(color: Colors.black87),
//       underline: Container(
//         height: 2,
//       ),
//       onChanged: (String newValue) { // String?
//
//         setState(() {
//
//           dropdownValue = newValue; // newValue!
//         });
//       },
//       items: <String>['Select State', 'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'].map<DropdownMenuItem<String>>((String value) {
//
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
//
// // private state class for with DropStatefulWidget
// class _ShippingDropStatefulWidgetState extends State<ShippingDropStatefulWidget> {
//
//   String dropdownValue = 'First Class Shipping';
//   @override
//   Widget build(BuildContext context) {
//
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_drop_down),
//       iconSize: 30,
//       elevation: 16,
//       isExpanded: true,
//       style: const TextStyle(color: Colors.black87),
//       underline: Container(
//         height: 2,
//       ),
//       onChanged: (String newValue) { // String?
//
//         setState(() {
//
//           dropdownValue = newValue; // newValue!
//         });
//       },
//       items: <String>['First Class Shipping'].map<DropdownMenuItem<String>>((String value) {
//
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
//
// // private state class for with DropStatefulWidget
// class _CountryDropStatefulWidgetState extends State<CountryDropStatefulWidget> {
//
//   String dropdownValue = 'United States';
//   @override
//   Widget build(BuildContext context) {
//
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_drop_down),
//       iconSize: 30,
//       elevation: 16,
//       isExpanded: true,
//       style: const TextStyle(color: Colors.black87),
//       underline: Container(
//         height: 2,
//       ),
//       onChanged: (String newValue) { // String?
//
//         setState(() {
//
//           dropdownValue = newValue; // newValue!
//         });
//       },
//       items: <String>['Select Country', 'Afghanistan', 'Arland Islands', 'Albania', 'Algeria', 'American Samoa', 'Andorra', 'Angola', 'Anguilla', 'Antarctica', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas, The', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda', 'Bonaire, Saint Eustatius and Saba', 'Bosnia and Herzegovina', 'Botswana', 'Bouvet Island', 'Brazil', 'British Indian Ocean Territory', 'Brunei Darussalam', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde', 'Cayman Islands', 'Central African Republic', 'Chad', 'Chile', 'China', 'Christmas Island', 'Cocos (Keeling) Islands', 'Colombia', 'Comoros', 'Congo', 'Congo, The Democratic Republic of the', 'Cook Islands', 'Costa Rica', "Cote D'ivoire", 'Croatia', 'Curacao', 'Cyprus', 'Czech Republic', 'Denmark', 'Djibouti', 'Dominican Republic', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Ethiopia', 'Falkland Islands (Malvinas)', 'Faroe Islands', 'Fiji', 'Finland', 'France', 'French Guiana', 'French Polynesia', 'French Southern Territories', 'Gabon', 'Gambia, The', 'Georgia', 'Germany', 'Ghana', 'Gibraltar', 'Greece', 'Greenland', 'Grenada', 'Guadeloupe', 'Guam', 'Guatemala', 'Guernsey', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Hati', 'Heard Island and the McDonald Islands', 'Holy See', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iraq', 'Ireland', 'Isle of Man', 'Israel', 'Italy', 'Jamacia', 'Japan', 'Jersey', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Kosovo', 'Kuwait', 'Kyrgyzstan', "Lao People's Democratic Republic", 'Latvia', 'Lebabon', 'Lesotho', 'Liberia', 'Libya', 'Leichtenstein', 'Lithuania', 'Luxembourg', 'Macao', 'Macedonia, The Former Yugoslav Republic of', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Martinique', 'Mauritania', 'Mauritius', 'Mayotte', 'Mexico', 'Micronesia, Federated States of', 'Monaco', 'Mongolia', 'Montenegro', 'Montserrat', 'Morocco', 'Mozambique', 'Myanmar', 'Nambia', 'Nauru', 'Nepal', 'Netherlands', 'Netherlands Antilles', 'New Caledonia', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'Northern Mariana Islands', 'Norway', 'Oman', 'Pakistan', 'Palau', 'Palestinian Territories', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines', 'Pitcairn', 'Poland', 'Portugal', 'Puerto Rico', 'Quatar', 'Republic of Korea', 'Reunion', 'Romania', 'Russian Federation', 'Rwanda', 'Saint Barthelemy', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Martin', 'Saint Oierre and Miquelon', 'Saint Vincent and the Grenadines', 'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Singapore', 'Sint Maarten', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Sonmalia', 'South Africa', 'South Georgia and the South Sandwich Islands', 'Spain', 'Sri Lanka', 'Suriname', 'Svalbard and Jan Mayen', 'Swaziland', 'Sweden', 'Switzerland', 'Taiwan', 'Tajikistan', 'Tanzania, United Republic of', 'Thailand', 'Timor-leste', 'Togo', 'Tokelau', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Turks and Caicos Islands', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'United States Minor Outlying Islands', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Venezuela', 'Vietnam', 'Virgin Islands, British', 'Virgin Islands, U.S.', 'Wallis and Futuna', 'Western Sahara', 'Yemen', 'Zambia', 'Zimbabwe'].map<DropdownMenuItem<String>>((String value) {
//
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
