import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int selectedDay1 = 0;
  int selectedDay2 = 0;
  int selectedDay3 = 0;
  int mjabbPic = 0;
  int solitairePic = 0;
  int jareedPic = 0;
  int sixFlagsPic = 0;
  int najdVillagePic = 0;
  int tameesaPic = 0;
  int valleyPadelPic = 0;
  int albujairiPic = 0;
  int maigliahPic = 0;

  final GlobalKey day1Card0Key = GlobalKey();
  final GlobalKey day1Card1Key = GlobalKey();
  final GlobalKey day1Card2Key = GlobalKey();
  final GlobalKey day2Card0Key = GlobalKey();
  final GlobalKey day2Card1Key = GlobalKey();
  final GlobalKey day2Card2Key = GlobalKey();
  final GlobalKey day3Card0Key = GlobalKey();
  final GlobalKey day3Card1Key = GlobalKey();
  final GlobalKey day3Card2Key = GlobalKey();

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
      body: SingleChildScrollView(
        child: Column(
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
           Padding(
              padding: EdgeInsets.only(top: 16, left: 28),
              child: Text(
                "Day 1",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
              children: [
                InkWell(
                  key: day1Card0Key,
                  onTap: () {
                    setState(() {
                      selectedDay1 = 0;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day1Card0Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay1 == 0 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color(0xFF99D2CD),
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
                                mjabbPic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9606.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9607.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9608.jpg", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: mjabbPic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: mjabbPic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: mjabbPic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: mjabbPic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: mjabbPic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: mjabbPic == 2 ? Colors.white : Colors.white38,
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
                                  "Mjabb",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "Enjoy Saudi coffee and traditional flavors at Mjabb.\n\nMjabb is a Saudi coffee spot inspired by traditional hospitality, offering Arabic coffee and local flavors in a warm, heritage-inspired atmosphere.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  key: day1Card1Key,
                  onTap: () {
                    setState(() {
                      selectedDay1 = 1;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day1Card1Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay1 == 1 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 225, 130, 52),
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
                                solitairePic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9628.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9627.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9629.JPG", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: solitairePic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: solitairePic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: solitairePic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: solitairePic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: solitairePic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: solitairePic == 2 ? Colors.white : Colors.white38,
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
                                  "Solitaire Mall",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "Enjoy luxury shopping, dining, and cafés in Solitaire Mall.\n\nSolitaire Mall is an elegant destination featuring high-end brands, stylish cafés, and a variety of restaurants, making it a great place to shop, dine, and spend time with family.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  key: day1Card2Key,
                  onTap: () {
                    setState(() {
                      selectedDay1 = 2;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day1Card2Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay1 == 2 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color(0xFFD4DDC3),
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
                                jareedPic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9612.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9630.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9631.jpg", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: jareedPic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: jareedPic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: jareedPic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: jareedPic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: jareedPic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: jareedPic == 2 ? Colors.white : Colors.white38,
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
                                  "Jareed Samhan",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "Enjoy a traditional Saudi dinner at Jareed Samhan.\n\nJareed Samhan offers Najdi cuisine inspired by the culinary heritage of Saudi Arabia, bringing traditional flavors into a distinctive setting.",
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
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay1 == 0 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay1 == 0 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay1 == 1 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay1 == 1 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay1 == 2 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay1 == 2 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
           Padding(
              padding: EdgeInsets.only(top: 16, left: 28),
              child: Text(
                "Day 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
              children: [
                InkWell(
                  key: day2Card0Key,
                  onTap: () {
                    setState(() {
                      selectedDay2 = 0;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day2Card0Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay2 == 0 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color(0xFF99D2CD),
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
                                tameesaPic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9614.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9635.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9634.jpg", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: tameesaPic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: tameesaPic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: tameesaPic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: tameesaPic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: tameesaPic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: tameesaPic == 2 ? Colors.white : Colors.white38,
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
                                  "Tameesa",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "Start your day with a traditional Saudi breakfast featuring freshly baked tamees and local favorites.\n\nTameesa is a popular Saudi breakfast spot known for its traditional dishes and casual atmosphere.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  key: day2Card1Key,
                  onTap: () {
                    setState(() {
                      selectedDay2 = 1;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day2Card1Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay2 == 1 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 225, 130, 52),
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
                                sixFlagsPic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9624.JPG", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9625.JPG", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9626.JPG", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: sixFlagsPic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: sixFlagsPic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: sixFlagsPic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: sixFlagsPic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: sixFlagsPic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: sixFlagsPic == 2 ? Colors.white : Colors.white38,
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
                                  "Six Flags Qiddiya",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "Spend the day enjoying exciting rides, attractions, and entertainment for the whole family.\n\nSix Flags Qiddiya is a large-scale theme park featuring thrilling attractions and family-friendly experiences.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  key: day2Card2Key,
                  onTap: () {
                    setState(() {
                      selectedDay2 = 2;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day2Card2Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay2 == 2 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color(0xFFD4DDC3),
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
                                najdVillagePic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9615.JPG", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9616.JPG", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9617.JPG", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: najdVillagePic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: najdVillagePic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: najdVillagePic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: najdVillagePic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: najdVillagePic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: najdVillagePic == 2 ? Colors.white : Colors.white38,
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
                                  "القرية النجدية — Najd Village",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "End the day with authentic Najdi cuisine in a traditional Saudi setting.\n\nNajd Village recreates the atmosphere of old Najdi homes while serving traditional Saudi dishes and flavors.",
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
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay2 == 0 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay2 == 0 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay2 == 1 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay2 == 1 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay2 == 2 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay2 == 2 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
           Padding(
              padding: EdgeInsets.only(top: 16, left: 28),
              child: Text(
                "Day 3",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
              children: [
                InkWell(
                  key: day3Card0Key,
                  onTap: () {
                    setState(() {
                      selectedDay3 = 0;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day3Card0Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay3 == 0 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color(0xFF99D2CD),
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
                                valleyPadelPic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9622.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9623.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9637.JPG", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: valleyPadelPic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: valleyPadelPic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: valleyPadelPic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: valleyPadelPic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: valleyPadelPic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: valleyPadelPic == 2 ? Colors.white : Colors.white38,
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
                                  "Valley Padel",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "Start your final day with an energetic padel session for the whole family.\n\nValley Padel offers a fun and active sports experience, making it a great way to spend time together and add some energy to your Riyadh trip.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  key: day3Card1Key,
                  onTap: () {
                    setState(() {
                      selectedDay3 = 1;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day3Card1Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay3 == 1 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 225, 130, 52),
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
                                maigliahPic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9640.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9638.jpg", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9639.jpg", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: maigliahPic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: maigliahPic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: maigliahPic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: maigliahPic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: maigliahPic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: maigliahPic == 2 ? Colors.white : Colors.white38,
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
                                  "Al-Maigliah Market — المعيقلية",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "Explore traditional Saudi shops and discover local products in the heart of Riyadh.\n\nAl-Maigliah Market is a traditional Riyadh marketplace known for perfumes, oud, spices, traditional goods, and local products.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  key: day3Card2Key,
                  onTap: () {
                    setState(() {
                      selectedDay3 = 2;
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Scrollable.ensureVisible(
                        day3Card2Key.currentContext!,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: selectedDay3 == 2 ? 270 : 100,
                    height: 430,
                    margin: EdgeInsets.all(5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Color(0xFFD4DDC3),
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
                                albujairiPic = index;
                              });
                            },
                            children: [
                              Image.asset("assets/images/IMG_9643.JPG", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9641.JPG", fit: BoxFit.cover),
                              Image.asset("assets/images/IMG_9642.JPG", fit: BoxFit.cover),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: albujairiPic == 0 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: albujairiPic == 0 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: albujairiPic == 1 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: albujairiPic == 1 ? Colors.white : Colors.white38,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: albujairiPic == 2 ? 8 : 4,
                              height: 4,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: albujairiPic == 2 ? Colors.white : Colors.white38,
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
                                  "Al Bujairi",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),
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
                            "End your WIJHA with Saudi culture, dining, and beautiful views in Diriyah.\n\nAl Bujairi Terrace brings together restaurants, cafés, and Saudi-inspired experiences overlooking the historic At-Turaif district.",
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
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay3 == 0 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay3 == 0 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay3 == 1 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay3 == 1 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: selectedDay3 == 2 ? 20 : 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: selectedDay3 == 2 ? Color(0xFF0F766E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
           SizedBox(height: 24),
          ],
        ),
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
