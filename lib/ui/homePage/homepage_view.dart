import 'package:boilerplate/ui/homePage/tabs/buy_tab.dart';
import 'package:boilerplate/ui/homePage/tabs/charts.dart';
import 'package:boilerplate/ui/homePage/tabs/recent_sales_tab.dart';
import 'package:boilerplate/utils/demins.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0466c8),
        title: Text("Sports Card",style: TextStyle(color: Colors.white),),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFEDC126).withOpacity(0.3),
        child: SingleChildScrollView(
                  child: Column(
            children: [
              Container(
                color:Color(0xFF0466c8) ,
                child: Row(
                  children: [
                  
                    Container(
                      // sports card photo
                      margin: EdgeInsets.only(top: 16,left: 16,bottom: 16),
                      color: Colors.green,
                      height: MediaQuery.of(context).size.width / 1.5,
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                      Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(

crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Player Name",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,color: Colors.white),),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Player ID",
                            style: TextStyle(
                              
                              fontSize: 16,
                              fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text("Player Variation",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,color: Colors.white),),
                          SizedBox(
                            height: 16,
                          ),
                          Text("Sports Card Type",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,color: Colors.white),),
                          Row(children: [

                              Container(
margin:  EdgeInsets.symmetric(vertical: 16),
                                padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
                          child: Center(child: Text("PSA 10",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                          ),
                          SizedBox(width: 16,),
                          Container(
                            margin:  EdgeInsets.symmetric(vertical: 16),
                            padding: EdgeInsets.all(8.0),
                           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
                          child: Center(child: Text("PSA 9",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                          )],),
                           Container(
                           
                            padding: EdgeInsets.all(8.0),
                           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
                          child: Center(child: Text("RAW",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = 0;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: isSelected == 0
                                ? Color(0xFF3FBAD5)
                                : Color(0XFF79AEE2),
                            borderRadius: BorderRadius.circular(16)),
                        height: 40,
                        width: 100,
                        child: Center(
                            child: Text(
                          "Buy Now",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:    isSelected == 0 ?  Colors.white
                                : Colors.black,),
                        ))),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = 1;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color:
                              isSelected == 1 ?   Color(0xFF3FBAD5)
                                : Color(0XFF79AEE2),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                          child: Text(
                        "Recent Sale",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:    isSelected == 1 ?  Colors.white
                                : Colors.black,),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = 2;
                      });
                    },
                    child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: isSelected == 2
                                 ? Color(0xFF3FBAD5)
                                : Color(0XFF79AEE2),
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                            child: Text(
                          "Charts ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:    isSelected == 2 ?  Colors.white
                                : Colors.black,),
                        ))),
                  )
                ],
              ),
              switchTab(isSelected)
            ],
          ),
        ),
      ),
    );
  }

  Widget switchTab(int isSelected) {
    if (isSelected == 0) {
      return BuyTab();
    }
    else if(isSelected == 1) {
      return RecentSalesTab();
    }
      else  {
      return Charts();
    }
    
  }
}
