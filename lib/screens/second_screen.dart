import 'package:challenge_un/models/bike_model.dart';
import 'package:challenge_un/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

      List<BikeModel> bikeList = BikeModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0,
                    //color: Colors.grey[350],
                  ),
                  borderRadius: BorderRadius.circular(30.0)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0,color: Colors.grey[200]),
                  borderRadius: BorderRadius.circular(30.0)
                ),
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Text(
              'Our bikes',
              style: GoogleFonts.montserrat(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.2
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    padding: EdgeInsets.all(10.0),
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                          //mainAxisSpacing: 1.0,
                          childAspectRatio: 1/2
                      ),
                    physics: BouncingScrollPhysics(),
                    itemCount: bikeList.length,
                      itemBuilder: (BuildContext context,int index){
                          return GestureDetector(
                            onTap: () => Navigator.of(context).push(MaterialPageRoute (builder: (_) => DetailPage(bikeList[index]))),
                            child: Padding(
                              padding: bikeList[index].id.isEven ? EdgeInsets.only(left: 10.0) :
                                EdgeInsets.only(right: 10.0),
                              child:Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1/2,
                                    child: Container(
                                      margin: bikeList[index].id.isEven ? EdgeInsets.only(top: 20.0, right: 5.0):
                                      EdgeInsets.only(bottom: 20.0, left: 5.0) ,
                                    height: 300,
                               // width: 180,
                                decoration: BoxDecoration(
                                    color: bikeList[index].color,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 0.8), //(x,y)
                                      blurRadius: 4.0,
                                    )]
                                ),
                                ),
                                  ),
                                  Positioned(
                                    bottom: 170.0 ,
                                    left: 10.0,
                                      child: Hero(
                                        tag: "hero${bikeList[index].imgPath}",
                                        child: Image(
                                          image: AssetImage('assets/images/${bikeList[index].imgPath}'),
                                          width: 140.0,
                                          height: 160.0,
                                        ),
                                      )
                                  ),

                                  Positioned(
                                    top: 175.0,
                                      left: 15.0,
                                      child: Text(
                                        '${bikeList[index].name}',
                                        style: GoogleFonts.roboto(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      )
                                  ),

                                  Positioned(
                                      top: 200.0,
                                      left: 15.0,
                                      child: Text(
                                        '${bikeList[index].price.toInt()} \$',
                                        style: GoogleFonts.roboto(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      )
                                  ),
                                  Positioned(
                                      top: 235.0,
                                      left: 15.0,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0)
                                        ),
                                        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage(bikeList[index]))),
                                        color: Colors.white,
                                        child: Text(
                                          'View Details'
                                        ),
                                      )
                                  ),

                              ]
                              )
                            ),
                          );

                      }
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
