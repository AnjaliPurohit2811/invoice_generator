import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtquantity = TextEditingController();
  TextEditingController txtgst = TextEditingController();
  TextEditingController txtsubtotal = TextEditingController();
  TextEditingController txtfinaltotal = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Invoice Generator' , style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.w600),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25 , left: 30),
            child: Container(
              height: 100,
              width: 350,
              child: TextField(
                controller: txtname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Product Name ' , style: TextStyle(color: Colors.black),)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 100,
              width: 350,
              child: TextField(
                controller: txtprice,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Product Price ' , style: TextStyle(color: Colors.black),)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 100,
              width: 350,
              child: TextField(
                controller: txtquantity,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Product Quantity ' , style: TextStyle(color: Colors.black),)
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                Navigator.of(context).pushNamed('/pre');
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.redAccent , width: 3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                    'Submit' , style: TextStyle(
                    color: Colors.black,
                    fontSize: 20 ,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

String? name;
double? quantity;
double? price;
double subtotal = 0;
double gst = 0;
double finaltotal = 0;
