import 'package:challenge_un/models/bike_model.dart';
import 'package:flutter/material.dart';
import 'package:challenge_un/widgets/app_colors.dart';
import 'package:challenge_un/models/data.dart';
import 'package:google_fonts/google_fonts.dart';


class UserScreen extends StatefulWidget {


  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.blueColor,
            expandedHeight: 150.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Checkout'),
              background: Image(
                image: AssetImage('assets/images/cover.png'),
                fit: BoxFit.cover,
              )
            ),
          ),
          SliverFillRemaining(
            child:ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Text('hey ${currentUser.name}',
                    style: GoogleFonts.montserrat(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Wohnort: ${currentUser.location}',
                    style: GoogleFonts.montserrat(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2
                    ),
                  ),
                ),
                SizedBox(height: 8.0,),
                Container(
                  height: 370,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: currentUser.bikes.length,
                    itemBuilder: (BuildContext context, int index){
                      BikeModel bikeModel = currentUser.bikes[index];
                      return _buildRecentBikes(context, bikeModel);
                    },
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  height: 50.0,
                  child: Divider(
                    thickness: 2.0,
                    height: 1.0,
                    color: AppColors.blueColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Price:',
                        style: GoogleFonts.montserrat(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2
                        ),
                      ),
                      Text('568 \$',
                        style: GoogleFonts.montserrat(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],

      ),
    );
  }
}

 _buildRecentBikes(BuildContext context, BikeModel bikeModel) {
  return Container(
    margin: EdgeInsets.all(10.0),
    width: 320.0,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
            width: 1.0,
            color: Colors.grey[200]
        ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 0.8), //(x,y)
          blurRadius: 4.0,
        )
      ]
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage('assets/images/${bikeModel.imgPath}'),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(bikeModel.name,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox( height: 4.0),
                        Text(bikeModel.name,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox( height: 4.0),
                        Text(bikeModel.price.toString(),
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),



      ],
    ),
  );
}


