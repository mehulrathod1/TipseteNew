import 'package:flutter/material.dart';
import 'package:tipster/View/WALLET/wallet_history_screen.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/constants/widgets/common_bottom_widget.dart';
import 'package:tipster/utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.0),
                      topLeft: Radius.circular(8.0))),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: appThemeBlue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Text(
                            'SETTINGS',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text('Profile Picture')),
                            Expanded(
                                child: CircleAvatar(
                              radius: 55,
                            )),
                            Expanded(child: Container()),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Choose file',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 16),
                                  child: Text(
                                    'profile pic.jpg',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Display name'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 8),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(7)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: appThemeBlue, width: 1.0),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Country'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: double.infinity,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,

                                value: '1',

                                // value: dropdownValue,
                                icon: Padding(
                                  padding: EdgeInsets.only(right: 18.0),
                                  child:
                                      Icon(Icons.keyboard_arrow_down_outlined),
                                ),

                                // iconSize: 24,

                                //underline: Container(),
                                onChanged: (String? newValue) {},
                                items: [
                                  DropdownMenuItem<String>(
                                    value: '1',
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Text('1'),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: '2',
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Text('2'),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Language'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: double.infinity,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,

                                value: '1',

                                // value: dropdownValue,
                                icon: Padding(
                                  padding: EdgeInsets.only(right: 18.0),
                                  child:
                                      Icon(Icons.keyboard_arrow_down_outlined),
                                ),

                                // iconSize: 24,

                                //underline: Container(),
                                onChanged: (String? newValue) {},
                                items: [
                                  DropdownMenuItem<String>(
                                    value: '1',
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Text('1'),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: '2',
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Text('2'),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Odd style'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: double.infinity,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,

                                value: '1',

                                // value: dropdownValue,
                                icon: Padding(
                                  padding: EdgeInsets.only(right: 18.0),
                                  child:
                                      Icon(Icons.keyboard_arrow_down_outlined),
                                ),

                                // iconSize: 24,

                                //underline: Container(),
                                onChanged: (String? newValue) {},
                                items: [
                                  DropdownMenuItem<String>(
                                    value: '1',
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Text('1'),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: '2',
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Text('2'),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Currency'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.withOpacity(0.2),
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 8),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(7)),
                              labelText: 'EUR \'\€\'',
                              hintText: 'EUR \'\€\'',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: appThemeBlue, width: 1.0),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Email'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.withOpacity(0.2),
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 8),
                              labelText: 'test@gmail.com',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintText: 'test@gmail.com',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(7)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: appThemeBlue, width: 1.0),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Change password',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Current password'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(left: 8),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(7)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: appThemeBlue, width: 1.0),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('New password'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 8),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(7)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: appThemeBlue, width: 1.0),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Confirm new password'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 8),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(7)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: appThemeBlue, width: 1.0),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Update'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(appThemeBlue)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CommonBottomWidget()
        ],
      ),
    );
  }
}
