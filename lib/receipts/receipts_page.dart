import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tirumala_enclave/receipts/receipts_controller.dart';

class ReceiptsPage extends GetView<ReceiptsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TIRUMALA ENCLAVE MAINTAINANCE'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    'Balance',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                  margin: EdgeInsets.all(5),
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(
                    'Balance',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                  color: Colors.blue,
                  margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                ),
              ),
            ],
          ),
          DropdownDatePicker(
            showMonth: true,
            showYear: true,
            showDay: false,
            startYear: 2023,
            endYear: 2024,
          ),
          Container(
            height: 230,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
              color: Color(0xFF363F93),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 5,
                  child: Text(
                    "Hello Sai",
                    style: TextStyle(fontSize: 40, color: Color(0xFF363F93)),
                  ),
                ),
              ],
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('101', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text('sai krishna', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('PAY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Text('\u{20B9}2019', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],
                          ),
                        ],
                      ),

                      Divider(height: 10,color: Colors.white,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Present', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: Colors.blueGrey),),
                              Text('\u{20B9}1019', ),
                            ],
                          ),
                          /*Column(
                           children: [
                             Text('DATA', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                             Text('1 GB/day',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                           ],
                         ),*/
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Previous', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                              Text('\u{20B9}1019', ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
              ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(5),
              children:  const [
                ExpansionTile(
                  shape: RoundedRectangleBorder( //<-- SEE HERE
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(width: 1)
                  ),
                  leading: CircleAvatar(child: Text("101"),),

                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sai Krishna'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Total"),
                          Text("\u{20B9}2190",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),
                  // subtitle: Text("\u{20B9}2190"),
                  children: [
                    Divider(height: 10,color: Colors.grey,),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(0,0,0,5),
                                        child: Text("Payments",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      )
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Fixed Charges', style: TextStyle(fontSize: 13,),),
                                        Text('\u{20B9}1500', ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Variable Charges', style: TextStyle(fontSize: 13,),),
                                        Text('\u{20B9}1500', ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Previous Dues', style: TextStyle(fontSize: 13),),
                                        Text('\u{20B9}1019', ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                                        Text('\u{20B9}2190', style: TextStyle(fontWeight: FontWeight.bold,),),
                                      ],
                                    ),
                                  ],
                                ),
                            ),
                            SizedBox(width: 30,child: VerticalDivider(width: 30,color: Colors.blueGrey,thickness: 10),),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Center(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(0,0,0,5),
                                          child: Text("Water Consumption",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                        )
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('OMR', style: TextStyle(fontSize: 13),),
                                        Text('2190', ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('CMR', style: TextStyle( fontSize: 13),),
                                        Text('2190', ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Diff (litres)', style: TextStyle(fontSize: 13),),
                                        Text('134', ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Amount', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                                        Text('\u{20B9}2190', style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    ),

                                  ],
                                ),
                            )
                          ],
                        ),
                    ),
                    Divider(height: 10,color: Colors.grey,),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('101', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                Text('101', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                Text('sai krishna', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('PAY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                Text('\u{20B9}2019', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              ],
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
