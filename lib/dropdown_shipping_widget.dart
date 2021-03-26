import 'package:flutter/material.dart';


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
