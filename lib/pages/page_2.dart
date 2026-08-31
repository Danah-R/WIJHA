import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wjha/data/places_data.dart';
import 'package:wjha/models/place_models.dart';
import 'package:wjha/pages/place_details_page.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<int> selectedDay = [0, 0, 0];
  List<int> imagePage = List.filled(placesData.length, 0);
  List<GlobalKey> cardKeys = List.generate(placesData.length, (_) => GlobalKey());

  final List<Color> cardColors = [
    Color(0xFF99D2CD),
    Color.fromARGB(100, 225, 130, 52),
    Color(0xFFD4DDC3),
  ];
List<PlaceModels> placeModels=[];

void getData() {
  for (var item in placesData) {
    PlaceModels placeModel = PlaceModels.fromJson(item);
    placeModels.add(placeModel);
  }
}

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 87, 53),
        iconTheme: IconThemeData(color: Colors.white),
        surfaceTintColor: Colors.transparent,
        elevation: 6,
        shadowColor: Colors.black45,
        titleSpacing: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text("Your ", style: TextStyle(fontSize: 25, color: Colors.white)),
            Text(
              "WIJHA",
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                height: 1,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, 20, 28, 4),
            child: Text(
              "Your personalized 3-day Saudi experience starts here.",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1.3,
                color: Color(0xFF0F766E),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, dayIndex) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Padding(
                padding: EdgeInsets.only(top: 16, left: 28),
                child: Text(
                  "Day ${dayIndex + 1}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    for (int posInDay = 0; posInDay < 3; posInDay++)
                      InkWell(
                        key: cardKeys[dayIndex * 3 + posInDay],
                        onTap: () {
                          if (selectedDay[dayIndex] == posInDay) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlaceDetailsPage(
                                  placeModel: placeModels[dayIndex * 3 + posInDay],
                                ),
                              ),
                            );
                            return;
                          }
                          setState(() {
                            selectedDay[dayIndex] = posInDay;
                          });
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            Scrollable.ensureVisible(
                              cardKeys[dayIndex * 3 + posInDay].currentContext!,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: selectedDay[dayIndex] == posInDay ? 270 : 100,
                          height: 430,
                          margin: EdgeInsets.all(5),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: cardColors[posInDay],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 210,
                                width: double.infinity,
                                child: PageView(
                                  onPageChanged: (index) {
                                    setState(() {
                                      imagePage[dayIndex * 3 + posInDay] = index;
                                    });
                                  },
                                  children: [
                                    for (String img in placesData[dayIndex * 3 + posInDay]["images"] as List<String>)
                                      Image.asset(img, fit: BoxFit.cover),
                                  ],
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < (placesData[dayIndex * 3 + posInDay]["images"] as List<String>).length; i++)
                                    AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      width: imagePage[dayIndex * 3 + posInDay] == i ? 8 : 4,
                                      height: 4,
                                      margin: EdgeInsets.symmetric(horizontal: 2),
                                      decoration: BoxDecoration(
                                        color: imagePage[dayIndex * 3 + posInDay] == i
                                            ? Colors.white
                                            : Colors.white38,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        placesData[dayIndex * 3 + posInDay]["name"] as String,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.location_on_outlined, color: Colors.black87, size: 18),
                                    SizedBox(width: 8),
                                    Icon(Icons.favorite_border, color: Colors.black87, size: 18),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 4, 10, 0),
                                child: Text(
                                  placesData[dayIndex * 3 + posInDay]["description"] as String,
                                  maxLines: 8,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black54, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: selectedDay[dayIndex] == i ? 20 : 6,
                      height: 6,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: selectedDay[dayIndex] == i
                            ? Color(0xFF0F766E)
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                ],
              ),
                  ],
                );
              },
              padding: const EdgeInsets.only(bottom: 24),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 211, 87, 53),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 8),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.favorite, color: Color(0x99FFFFFF), size: 30),
            Icon(Icons.explore, color: Colors.white, size: 30),
            Icon(Icons.map, color: Color(0x99FFFFFF), size: 30),
          ],
        ),
      ),
    );
  }
}
