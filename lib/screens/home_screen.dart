import 'package:challenge_un/screens/second_screen.dart';
import 'package:challenge_un/widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 560.0,
            right: 180.0,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.yellowColor
              ),
              height: 400,
              width: 400,
            ),
          ),

          Positioned(
            top: 80.0,
            left: 250.0,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.blueColor
              ),
              height: 200,
              width: 200,
            ),
          ),

          Positioned(
            bottom: 90.0,
            left: 100.0,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.greenColor
              ),
              height: 400,
              width: 400,
            ),
          ),


          Positioned(
            top: 700.0,
            right: 300.0,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.redColor
              ),
              height: 150,
              width: 150,
            ),
          ),

           Positioned(
              top: 250,
              left: 40,
              child: Image(
              image: AssetImage('assets/images/logo.png'),
              height: 50,
              width: 50,
            ),
            ),



           Positioned(
             top: 293.0,
              left: 40,
              child: RichText(
              text: TextSpan(
                text: 'Google',
                style: GoogleFonts.roboto(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600]
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Self',
                      style: GoogleFonts.roboto(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400
                      ),
                  ),
                  TextSpan(
                    text: '\nDriving bike',
                    style: GoogleFonts.roboto(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),

                ]
              ),

            ),
            ),

           Positioned(
              bottom: 25.0,
                left: 140.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton.icon(
                      color:AppColors.greenColor,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),

                      ),
                      label: Text(
                        'Click here',
                      ),
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 20.0,
                      ),
                      onPressed: () => Navigator.push(context, PageTransition(child: SecondScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter ,duration: Duration(milliseconds: 1000)), ),

                    )

                  ],
                )
            ),

          Positioned(
            top: 450.0,
            left: 130,
            child: RichText(
              text: TextSpan(
                  text: 'Google',
                  style: GoogleFonts.roboto(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Self',
                      style: GoogleFonts.roboto(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    TextSpan(
                      text: ' Driving bike',
                      style: GoogleFonts.roboto(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300
                      ),
                    ),

                  ]
              ),
            ),
          ),

      Positioned(
        top: 490.0,
        left: 160,
        child:Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             VerticalDivider(
               width: 10.0,
               color: Colors.white,
               thickness: 1.0,
             ),
             SizedBox(width: 10.0,),
             Text(
               'Help to way \n your safe travel',
               style: GoogleFonts.roboto(
                  color: Colors.white,
                 fontWeight: FontWeight.w400,
                   fontSize: 20.0,
               ),
             )
           ],
          ),
        )
      ),


        ],
      ),
    );
  }

}




