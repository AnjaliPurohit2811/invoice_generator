import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtquantity = TextEditingController();
  TextEditingController txtgst = TextEditingController();

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
                price=double.parse(txtprice.text);
                gst=double.parse(txtgst.text);
                name=txtname.text;
                quantity=double.parse(txtquantity.text);
                price =(price!*quantity!) ;
                subtotal=price!*gst/100;
                finaltotal=subtotal+price!;

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
          )

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
