import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sofa_app/model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
//------------------------sofa image------------------------------
                Center(
                  child: Container(
                    width: 150,
                    height: 90,
                    margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                    child: Image.asset('assets/sofa1.png'),
                  ),
                ),
//------------------------searchBar------------------------------
                searchBar(),
//------------------------bluesale image------------------------------
                Column(

                  children: [
                    Container(
                      child: Stack(

                        children: [

                          Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/bluesale.png",
                              )),

                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                     Container(
                                     // alignment: Alignment.bottomRight,
                                      child: Text('Shop Now',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black, fontSize: 13,decoration: TextDecoration.underline,)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                                        width: 20,
                                        child: Icon(
                                          Icons.arrow_right,color: Colors.black,
                                        ),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

//------------------------shop by category------------------------------

                Container(
                  margin: EdgeInsets.all(15),
                  child: Text(
                    'SHOP BY CATEGORY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),

//------------------------categores list------------------------------
                Container(
                  width: 400,
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      categoryList("assets/couch-sofa.png","Chairs"),
                      categoryList("assets/closet-wardrobe.png","Wardrobe"),
                      categoryList("assets/double-bed.png","BED"),
                      categoryList("assets/desk-furniture-table.png","Desk"),
                    ],
                  ),
                ),

//-------------------------our best sellers----------------------
                Container(
                  margin: EdgeInsets.all(15),
                  child: Text(
                    'OUR BEST SELLERS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),

//-------------------------------------------------------------
                Container(
                  width: 400,
                  height: 430,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder:(BuildContext context, int index) {
                      return  card(list[index]);
                    },

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      margin: EdgeInsets.fromLTRB(15,5,15,15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.black45)),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Image.asset("assets/setting-lines.png"),),
      ),
    );
  }

  Widget categoryList(String image,String name) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),

      child: Column(
      children: [
        Container(
            decoration:( BoxDecoration(
              borderRadius: BorderRadius.circular(8),color: Color(0x1A0855D2),
            )
            ),
            width: 100,
            height: 100,
            child: Stack(
              children: [

                Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    child: Image.asset(
                      image,
                    )),

              ],
            )
        ),
        Container(
          width: 100,
          child: Stack(
            children: [

              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                alignment: Alignment.center,
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ],

        ),);
  }





  Widget card(Model m) {
    return Padding(

      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 300,
        height: 470,
        margin: EdgeInsets.fromLTRB(0, 0, 0,10 ),
        decoration:( BoxDecoration(
            borderRadius: BorderRadius.circular(10),color: Colors.white,
         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
        )
        ),

        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              child: Image.asset(
                m.image!,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Container(
                  width: 40,
                  height: 40,
                  child:Icon(
                  Icons.favorite_border,color: Colors.black,
                ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 119,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 8, 10, 0),
                    child: Text(
                      m.name!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.fromLTRB(15, 5, 10, 0),
                      child: Text(
                        m.details!,
                        style: TextStyle(color: Colors.black45, fontSize: 14),
                      )),

                  Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 10, 0),
                    width: 115,
                    child: Image.asset(
                      "assets/rstars.png",
                    ),
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                        child: Text(
                          m.price!,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        width: 50,
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.card_travel,color: Colors.white,
                        ),
                        // Image.asset(
                        //   "assets/cart.png",
                        // ),
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
