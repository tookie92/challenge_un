import 'package:challenge_un/models/bike_model.dart';
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
                           crossAxisCount: 2, mainAxisSpacing: 5.0, childAspectRatio: 1/2
                      ),
                    physics: BouncingScrollPhysics(),
                    itemCount: bikeList.length,
                      itemBuilder: (BuildContext context,int index){
                          return Padding(
                            padding: EdgeInsets.only(left:5.0, bottom: 10.0, top: 10.0, right: 5.0),
                            child:Stack(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1/2,
                                  child: Container(
                                  height: 300,
                             // width: 180,
                              decoration: BoxDecoration(
                                  color: bikeList[index].color,
                                  borderRadius: BorderRadius.circular(30.0),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 0.8), //(x,y)
                                    blurRadius: 4.0,
                                  )]
                              ),
                              ),
                                ),
                                Positioned(
                                  bottom: 140.0 ,
                                  left: 10.0,
                                    child: Image(
                                      image: AssetImage('assets/images/${bikeList[index].imgPath}'),
                                      width: 140.0,
                                      height: 160.0,
                                    )
                                ),

                                Positioned(
                                  top: 175.0,
                                    left: 15.0,
                                    child: Text(
                                      '${bikeList[index].name}',
                                      style: GoogleFonts.roboto(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white
                                      ),
                                    )
                                ),

                                Positioned(
                                    top: 205.0,
                                    left: 15.0,
                                    child: Text(
                                      '${bikeList[index].price} \$',
                                      style: GoogleFonts.roboto(
                                          fontSize: 15.0,
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
                                      onPressed: (){},
                                      color: Colors.white,
                                      child: Text(
                                        'View Details'
                                      ),
                                    )
                                ),

                            ]
                            )
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
