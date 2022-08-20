import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('App Bar') ,
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.flag_outlined),),

      ),

      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(

            height: 100,
            child: Container(
              height: 100,

              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.remove_shopping_cart_outlined),
                        SizedBox(
                          height: 3,
                        ),
                        Text('My Ads'),
                      ],
                    ),
                    SizedBox(
                      width: 200,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite_outline),
                        Text('My Favorite')
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:140,
            color: Colors.white,
            child: GridView.builder(

              itemCount: 7,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (_, index) {
                return Container(
                  color: Colors.amberAccent,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "assets/tiger.png",
                          width: 100,


                        ),
                        SizedBox(height: 5,),
                        Text('Royal Bengal Tiger'),
                        Text('Series 9 Golden'),
                        Text('& 300,000'),
                      ],
                    ),


                  ),

                );
              },
            ),
          ),
          SingleChildScrollView(

            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.watch_outlined),
                  title: Text('Apple Watch'),
                  subtitle: Text('Made in BD'),
                  trailing: Text("Price & 3000"),
                ),
                ListTile(
                  leading: Icon(Icons.watch_outlined),
                  title: Text('Apple Watch'),
                  subtitle: Text('Made in BD'),
                  trailing: Text("Price & 3000"),
                ),


              ],
            ),
          ),
        ],
      ),
      
    );
  }
}