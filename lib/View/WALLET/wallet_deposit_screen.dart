import 'package:flutter/material.dart';
import 'package:tipster/View/WALLET/wallet_history_screen.dart';
import 'package:tipster/View/WALLET/wallet_withdraw_screen.dart';
import 'package:tipster/constants/widgets/commonAppBar.dart';
import 'package:tipster/constants/widgets/common_bottom_widget.dart';
import 'package:tipster/constants/widgets/wallet_popup_widget.dart';
import 'package:tipster/utils/colors.dart';

class WalletDepositScreen extends StatefulWidget {
  WalletDepositScreen({Key? key}) : super(key: key);

  @override
  State<WalletDepositScreen> createState() => _WalletDepositScreenState();
}

class _WalletDepositScreenState extends State<WalletDepositScreen> {
  bool acknowledgeBool = false;

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
                            'WALLET',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'BALANCE: 0.00 EUR',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              walletDialog(context);
                            },
                            child: Container(
                              width: 150,
                              decoration: BoxDecoration(
                                color: appThemeBlue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    Text(
                                      'DEPOSIT',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Deposit amount (EUR):',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                    borderRadius: BorderRadius.circular(7)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: appThemeBlue, width: 1.0),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 16.0),
                                child: Text(
                                  'Payment method:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                            value: '1',
                                            fillColor:
                                                MaterialStateProperty.all(
                                                    appThemeBlue),
                                            groupValue: '1',
                                            onChanged: (v) {}),
                                        Text(
                                          'Card',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                            value: '1',
                                            fillColor:
                                                MaterialStateProperty.all(
                                                    appThemeBlue),
                                            groupValue: '1',
                                            onChanged: (v) {}),
                                        Text(
                                          'PayPal',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                            value: '1',
                                            fillColor:
                                                MaterialStateProperty.all(
                                                    appThemeBlue),
                                            groupValue: '1',
                                            onChanged: (v) {}),
                                        Text(
                                          'Skrill',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: acknowledgeBool,
                                activeColor: appThemeBlue,
                                onChanged: (v) {
                                  setState(() {
                                    acknowledgeBool = v!;
                                  });
                                },
                                fillColor:
                                    MaterialStateProperty.all(appThemeBlue),
                              ),
                              Expanded(
                                child: Text(
                                    'I acknowledge that I read and agree with the wallet Rules'),
                              ),
                            ],
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Deposit'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        appThemeBlue)),
                              ),
                            ),
                          ),
                        ],
                      ),
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
