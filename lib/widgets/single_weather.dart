import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_location.dart';

class SingleWeather extends StatelessWidget {
  final int index;

  const SingleWeather({
    Key? key,
   required this.index,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150),
                Text(locationList[index].city,
                    style: GoogleFonts.lato(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(
                  height: 5,
                ),
                Text(locationList[index].dateTime,
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 230,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(locationList[index].temparature,
                    style: GoogleFonts.lato(
                        fontSize: 85,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                Row(
                  children: [
                    SvgPicture.asset(locationList[index].iconUrl,
                        width: 34, height: 34, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(locationList[index].weatherType,
                        style: GoogleFonts.lato(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white30)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Wind",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text(locationList[index].wind.toString(),
                            style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("km/h",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.greenAccent,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Rain",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text(locationList[index].rain.toString(),
                            style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("%",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.redAccent,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Humidity",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text(locationList[index].humidity.toString(),
                            style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("%",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.redAccent,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
