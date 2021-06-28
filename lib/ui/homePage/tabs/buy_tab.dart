import 'package:flutter/material.dart';

class BuyTab extends StatefulWidget {

  @override
  _BuyTabState createState() => _BuyTabState();
}

class _BuyTabState extends State<BuyTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,

          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder:(context, index) => Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0XFFB4D2EF),
            borderRadius: BorderRadius.circular(16)
),
width: MediaQuery.of(context).size.width,
// height: 60,
child: ListTile(
  
  leading: Container(color: Colors.red,width: 60,
  height: 50,),
  title: Text("Title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
  
  
  ),
  subtitle: Text("Price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
  ),
          ),
          
        ),
      ],
    );
  }
}