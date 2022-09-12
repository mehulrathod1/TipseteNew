import 'package:flutter/material.dart';
import 'package:tipster/View/home_screen.dart';
import 'package:tipster/View/my_coupon_screen.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/constants/widgets/commonBtn.dart';
import 'package:tipster/constants/widgets/common_bottom_widget.dart';
import 'package:tipster/utils/colors.dart';

class NewPickScreen extends StatefulWidget {
  NewPickScreen({Key? key}) : super(key: key);

  @override
  State<NewPickScreen> createState() => _NewPickScreenState();
}

class _NewPickScreenState extends State<NewPickScreen> {
  TextStyle commonstyle = TextStyle(fontSize: 18);

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
                    height: 60,
                    decoration: BoxDecoration(
                        color: appThemeBlue,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.0),
                            topLeft: Radius.circular(8.0))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'NEW PICK',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Sport',
                              style: commonstyle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
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

                                    value: null,
                                    hint: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Soccer', style: commonstyle),
                                    ),

                                    // value: dropdownValue,
                                    icon: Padding(
                                      padding: EdgeInsets.only(right: 18.0),
                                      child: Icon(
                                          Icons.keyboard_arrow_down_outlined),
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
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Competition', style: commonstyle),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              height: 40,
                              child: TextFormField(
                                // autovalidateMode: AutovalidateMode.onUserInteraction,
                                // validator: validator,
                                // maxLength: maxLength,
                                // maxLengthEnforcement: MaxLengthEnforcement.enforced,

                                decoration: InputDecoration(
                                  enabled: true,
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  border: new OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color: Colors.transparent)),
                                  // enabledBorder: InputBorder.none,
                                  // errorBorder: InputBorder.none,
                                  // disabledBorder: InputBorder.none,
                                  filled: true,
                                  labelText: 'UEFA Champion League',

                                  labelStyle: TextStyle(color: Colors.black),
                                  hintText: "UEFA Champion League",
                                  hintStyle: TextStyle(color: Colors.black),
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Event', style: commonstyle),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              height: 40,
                              child: TextFormField(
                                // autovalidateMode: AutovalidateMode.onUserInteraction,
                                // validator: validator,
                                // maxLength: maxLength,
                                // maxLengthEnforcement: MaxLengthEnforcement.enforced,

                                decoration: InputDecoration(
                                  enabled: true,
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  border: new OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color: Colors.transparent)),
                                  // enabledBorder: InputBorder.none,
                                  // errorBorder: InputBorder.none,
                                  // disabledBorder: InputBorder.none,
                                  filled: true,
                                  labelText: 'Pick Event',

                                  labelStyle: TextStyle(color: Colors.black),
                                  hintText: "Pick Event",
                                  hintStyle: TextStyle(color: Colors.black),
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Market', style: commonstyle),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              height: 40,
                              child: TextFormField(
                                // autovalidateMode: AutovalidateMode.onUserInteraction,
                                // validator: validator,
                                // maxLength: maxLength,
                                // maxLengthEnforcement: MaxLengthEnforcement.enforced,

                                decoration: InputDecoration(
                                  enabled: true,
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  border: new OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: new BorderSide(
                                          color: Colors.transparent)),
                                  // enabledBorder: InputBorder.none,
                                  // errorBorder: InputBorder.none,
                                  // disabledBorder: InputBorder.none,
                                  filled: true,
                                  labelText: 'Total corners FT',

                                  labelStyle: TextStyle(color: Colors.black),
                                  hintText: "Total corners FT",
                                  hintStyle: TextStyle(color: Colors.black),
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Bet', style: commonstyle),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
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

                                    value: null,
                                    hint: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child:
                                          Text('Pick bet', style: commonstyle),
                                    ),

                                    // value: dropdownValue,
                                    icon: Padding(
                                      padding: EdgeInsets.only(right: 18.0),
                                      child: Icon(
                                          Icons.keyboard_arrow_down_outlined),
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
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Text('2'),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: commonBtn(
                                context,
                                MyCouponScreen(),
                                appThemelightPink,
                                Colors.white,
                                'ADD TO COUPON',
                                18,
                                5),
                          )
                        ],
                      ))
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
