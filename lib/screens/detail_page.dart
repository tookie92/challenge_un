import 'package:challenge_un/models/bike_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  final BikeModel bikeModel;
  DetailPage(this.bikeModel);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  _makeText({text, Schriftgross, color}){

    return Container(
      child: Text(text,
        style: GoogleFonts.roboto(
            fontWeight: FontWeight.w800,
            fontSize: Schriftgross,
            color: color
        ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdbdbdd),
      body: Stack(
        children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffdbdbdd),
              ),
            ),
          Positioned(
            //bottom: 0.0,
            top: 450.0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  color: widget.bikeModel.color,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60.0),
                    topLeft: Radius.circular(60.0)
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 280.0,
                      left: 230.0,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                    ),
                    ),
                    Positioned(
                      bottom: 70.0,
                        right: 20.0,
                        child: Text(
                            'Buy Now',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize: 20.0,
                            color: widget.bikeModel.color
                          ),
                        )
                    ),
                    Positioned(
                        top: 40.0,
                        left: 25.0,
                        child: Row(
                          children: [
                            _makeText(text: '${widget.bikeModel.name}', Schriftgross: 22.0, color: Colors.white),

                          ],
                        )
                    ),

                    Positioned(
                        top: 120.0,
                        left: 25.0,
                        child: Text(
                          '${widget.bikeModel.description}',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300,
                              fontSize: 18.0,
                              color: Colors.white
                          ),
                        )

                    ),

                    Positioned(
                        top: 220.0,
                        left: 25.0,
                        child: Row(
                          children: [
                            Text(
                              '\$${widget.bikeModel.price}',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(width: 130.0),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.star, size: 20.0, color: Colors.white,),
                                    Icon(Icons.star, size: 20.0, color: Colors.white,),
                                    Icon(Icons.star, size: 20.0, color: Colors.white,),
                                    Icon(Icons.star, size: 20.0, color: Colors.white,),
                                    Icon(Icons.star_border_outlined, size: 20.0, color: Colors.white,),

                                  ],
                                ),
                                Row(
                                  children: [
                                    _makeText(text: '4.8',Schriftgross: 22.0, color: Colors.white),
                                  ],
                                )
                              ],
                            )
                          ],
                        )

                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.0,
              left: 15.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.grey,
                    iconSize: 30.0,
                    onPressed: () => Navigator.pop(context),
                  ),
                  SizedBox(width: 260.0),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_outlined),
                    color: Colors.grey,
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                ],
              )
          ),

          Positioned(
            top: 100.0,
              left: 15.0,
              child: Hero(
                tag: 'hero${widget.bikeModel.imgPath}',
                child: Image(
                  image: AssetImage ('assets/images/${widget.bikeModel.imgPath}'),
                  height: 350,
                  width: 350,
                ),
              )
          )
        ],
      ),
    );
  }

}

