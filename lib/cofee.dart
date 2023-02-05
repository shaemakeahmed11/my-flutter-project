import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 
class coffee extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xff040f13),
        appBar: AppBar(
          // bottom:
          backgroundColor: Color(0xff040f13),
          elevation: 0,
          //   backgroundColor: Color(0xff040f13),
          //  backgroundColor: Color(0xff263238),
          leading: Icon(Icons.lens_blur),//lens blur
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundImage: AssetImage('images/m2.jpg'), radius: 20),
            ),
          ],
        ),
        body: ListView(
          children: [Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("FIND YOUR BEST",
                  style: GoogleFonts.bebasNeue(
            textStyle: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold, letterSpacing: .5),
          ),
                      // style: 
                      
                      // TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 40,
                      //     fontWeight: FontWeight.bold)
                          
                          ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("COFEE FOR YOU",
                            style: GoogleFonts.bebasNeue(
            textStyle: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold, letterSpacing: .5),
          ),
                          
                          ),
                ),
                SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    //decoration: BoxDecoration(border: Border.all(),  borderRadius: BorderRadius.all(Radius.circular(20))),
                    //  padding: EdgeInsets.only(left: 20),
                    width: double.infinity, height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 11),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30.0),
                            // ),
                            // contentPadding: EdgeInsets.symmetric(
                            //     vertical: 10.0, horizontal: 20.0),
                            // filled: true,
                            prefixIcon: Icon(Icons.search),
                            //  hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "What is on your maind ?",
                            fillColor: Colors.white70),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                DefaultTabController(
                  length: 3,
                  child: const TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    //  labelPadding: EdgeInsets.all(0),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        text: "Coffee one",
                      ),
                      Tab(
                        text: "Coffee two",
                      ),
                      Tab(
                        text: "Coffee three",
                      ),
                    ],
                  ),
                ), //T
                SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 400,
          height: 340,
          
          child:   Container(

            child: ListView(
            
              scrollDirection: Axis.horizontal,
            
              children:[ 
            
              myStory(),
            SizedBox(width: 10,),
              myStory(),
            
            SizedBox(width: 10,),
              myStory(),
            
            
            
            ]),
          ),
        )
              ],
            ),
          ),
        ])
       ,
  bottomNavigationBar: CurvedNavigationBar(
    buttonBackgroundColor: Colors.white,
    color: Colors.amber,
    backgroundColor: Color(0xff040f13),
    items: <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.person,size: 30),
      Icon(Icons.favorite,size: 30),
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
 
 
        
        );
  }
}






class myStory extends StatelessWidget {
  
  double widht = 2100;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 220,
          decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey),
              color:  Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                height: 150, width: 250,

                //color: Colors.red,

                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    "images/cof.jpg",
                    fit: BoxFit.cover,
                    //height: 90,
                    //width: 350,
                  ),
                ),
              )
            ],
          ),
        ),
         Positioned(
            bottom: 140,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             
                Text(
                  "Cappucino",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),

                SizedBox(height: 5,),
                Text(
                  "without milk",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
            
            ),
        Positioned(
            bottom: 50,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Icon(Icons.attach_money,color: Colors.amber,),
                Text(
                  "400",
                  style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),
                ),
              ],
            )
            
            ),
               Positioned(
               bottom: 50,
            left: 173,
               child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7,vertical: 8),
               decoration: BoxDecoration(
                 color: Colors.amber,
                 // border: Border.all(
                 //   //color: Colors.red[500],
                 // ),
                 borderRadius: BorderRadius.all(Radius.circular(10))
               ),
               child: Icon(Icons.add,color: Colors.white,)
             ),
             )
             
              ],
            );
      
    
  }
}


