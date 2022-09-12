import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tipster/View/BUYER%20ADMIN/buyer_admin_susbscription.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/constants/widgets/common_bottom_widget.dart';
import 'package:tipster/utils/colors.dart';

class ChangePersonalDetailsScreen extends StatefulWidget {
  ChangePersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ChangePersonalDetailsScreen> createState() =>
      _ChangePersonalDetailsScreenState();
}

class _ChangePersonalDetailsScreenState
    extends State<ChangePersonalDetailsScreen> {
  double textfieldsize = 40;
  double fontsize = 16;
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
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
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
                            'CHANGE PERSONAL DETAILS',
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
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name *'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: textfieldsize,
                          child: TextField(
                            maxLength: null,
                            style: TextStyle(fontSize: fontsize),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 5, right: 5),
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
                          height: 20,
                        ),
                        Text('Surname *'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: textfieldsize,
                          child: TextField(
                            style: TextStyle(fontSize: fontsize),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 5, right: 5),
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
                          height: 20,
                        ),
                        Text('Address'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: textfieldsize,
                          child: TextField(
                            style: TextStyle(fontSize: fontsize),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 5, right: 5),
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
                          height: 20,
                        ),
                        Text('Country'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: textfieldsize,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey, width: 1)),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          width: double.infinity,
                          child: DropdownButton<String>(
                            onChanged: (newValue) {},
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            underline: Container(),
                            dropdownColor: Colors.white,

                            isExpanded: true,

                            // Initial Value
                            hint: Text(
                              '',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Down Arrow Icon
                            icon: Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: [
                              DropdownMenuItem(
                                value: '1',
                                child: Text('1'),
                              ),
                              DropdownMenuItem(
                                value: '1',
                                child: Text('1'),
                              ),
                              DropdownMenuItem(
                                value: '1',
                                child: Text('1'),
                              ),
                              DropdownMenuItem(
                                value: '1',
                                child: Text('1'),
                              ),
                              DropdownMenuItem(
                                value: '1',
                                child: Text('1'),
                              ),
                            ],
                            // After selecting the desired option,it will
                            // change button value to selected value

                            value: null,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Phone'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: textfieldsize,
                          child: TextField(
                            style: TextStyle(fontSize: fontsize),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 5, right: 5),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
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
                          height: 20,
                        ),
                        Text('E-mail *'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: textfieldsize,
                          child: TextField(
                            style: TextStyle(fontSize: fontsize),
                            readOnly: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.withOpacity(0.2),
                              filled: true,
                              contentPadding:
                                  EdgeInsets.only(left: 5, right: 5),
                              hintText: 'test@gmail.com',
                              hintStyle: TextStyle(fontSize: 16),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
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
                          height: 20,
                        ),
                        Text('* mandatory field'),
                        Text(
                            'Your personal details will not be shown publicly'),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: appThemelightPink,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0, vertical: 4.0),
                                  child: Text(
                                    'CANCEL',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: appThemeteal,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0, vertical: 4.0),
                                  child: Text(
                                    'SUBMIT',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
