import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wjha/pages/page_2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<int> selectedSection1 = [];
  int? selectedSection2;
  int? selectedSection3;
  int? selectedDuration;
  List<int> selectedCities = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 87, 53),
        elevation: 6,
        shadowColor: Colors.black45,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "WIJHA,",
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.75,
                height: 1,
                color: Color(0xFF0F766E),
              ),
            ),
            Text("Saudi your way", style: GoogleFonts.poppins(fontSize: 12, height: 1, color: Colors.white)),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.account_circle, color: Color(0xFFF5EAE3), size: 32),
                Text("Guest", style: TextStyle(color: Colors.white, fontSize: 10, height: 1, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How long is your trip?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 0.5),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedDuration = 0;
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedDuration == 0
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "1-3 days",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedDuration = 1;
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedDuration == 1
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "4-7 days",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedDuration = 2;
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedDuration == 2
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "1-2 weeks",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedDuration = 3;
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedDuration == 3
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "2+ weeks",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(child: SizedBox()),

                SizedBox(width: 12),

                Expanded(child: SizedBox()),
              ],
            ),

            SizedBox(height: 24),

            Text(
              "What cities are you visiting?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 0.5),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedCities.contains(0)) {
                          selectedCities.remove(0);
                        } else {
                          selectedCities.add(0);
                        }
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedCities.contains(0)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "Riyadh",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedCities.contains(1)) {
                          selectedCities.remove(1);
                        } else {
                          selectedCities.add(1);
                        }
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedCities.contains(1)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "Neom",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedCities.contains(2)) {
                          selectedCities.remove(2);
                        } else {
                          selectedCities.add(2);
                        }
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedCities.contains(2)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "Abha",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedCities.contains(3)) {
                          selectedCities.remove(3);
                        } else {
                          selectedCities.add(3);
                        }
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedCities.contains(3)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "AlUla",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedCities.contains(4)) {
                          selectedCities.remove(4);
                        } else {
                          selectedCities.add(4);
                        }
                      });
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedCities.contains(4)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          "Jeddah",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 16),
                      ],
                    ),
                    child: Center(
                      child: Icon(Icons.add, color: Color(0xFF0F766E)),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "What calls to you first? ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          offset: Offset(0, 0.5),
                        ),
                      ],
                    ),
                  ),
                  TextSpan(
                    text: "(Choose up to 3)",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Row(
              children: [

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedSection1.contains(0)) {
                          selectedSection1.remove(0);
                        } else if (selectedSection1.length < 3) {
                          selectedSection1.add(0);
                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection1.contains(0)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFEFE4D0),
                                child: Center(
                                  child: SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                      "assets/images/saudi-arabia (1).png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Heritage",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedSection1.contains(1)) {
                          selectedSection1.remove(1);
                        } else if (selectedSection1.length < 3) {
                          selectedSection1.add(1);
                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection1.contains(1)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFEFE4D0),
                                child: Center(
                                  child: SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: Image.asset(
                                      "assets/images/dallah (1).png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Cuisine",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            Row(
              children: [

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedSection1.contains(2)) {
                          selectedSection1.remove(2);
                        } else if (selectedSection1.length < 3) {
                          selectedSection1.add(2);
                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection1.contains(2)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFEFE4D0),
                                child: Center(
                                  child: SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: Image.asset(
                                      "assets/images/city (1).png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Future",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedSection1.contains(3)) {
                          selectedSection1.remove(3);
                        } else if (selectedSection1.length < 3) {
                          selectedSection1.add(3);
                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection1.contains(3)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFEFE4D0),
                                child: Center(
                                  child: SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                      "assets/images/oasis.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Nature",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            Row(
              children: [

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedSection1.contains(4)) {
                          selectedSection1.remove(4);
                        } else if (selectedSection1.length < 3) {
                          selectedSection1.add(4);
                        }
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection1.contains(4)
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFEFE4D0),
                                child: Center(
                                  child: SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: Image.asset(
                                      "assets/images/shopping-bag.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Shopping",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(child: SizedBox()),
              ],
            ),

            SizedBox(height: 24),

            Text(
              "What's your pace?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 0.5),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedSection2 = 0;
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection2 == 0
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFFCEBC7),
                                child: Center(
                                  child: SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: Image.asset(
                                      "assets/images/relaxation.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Calm",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedSection2 = 1;
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection2 == 1
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFBFDDD6),
                                child: Center(
                                  child: SizedBox(
                                    width: 70,
                                    height: 64,
                                    child: Image.asset(
                                      "assets/images/running.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Active",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            Text(
              "Who is this WIJHA for?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 0.5),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedSection3 = 0;
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection3 == 0
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFE3B7A0),
                                child: Center(
                                  child: SizedBox(
                                    width: 70,
                                    height: 58,
                                    child: Image.asset(
                                      "assets/images/person (2).png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Solo",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedSection3 = 1;
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection3 == 1
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFE3B7A0),
                                child: Center(
                                  child: SizedBox(
                                    width: 90,
                                    height: 90,
                                    child: Image.asset(
                                      "assets/images/family.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Family",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            Row(
              children: [

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedSection3 = 2;
                      });
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 16),
                        ],
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: selectedSection3 == 2
                            ? Border.all(color: Color(0xFF0F766E), width: 3)
                            : null,
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color(0xFFE3B7A0),
                                child: Center(
                                  child: SizedBox(
                                    width: 62,
                                    height: 62,
                                    child: Image.asset(
                                      "assets/images/people (1).png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Friends",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(child: SizedBox()),
              ],
            ),

            SizedBox(height: 24),

                              Center(
              child: SizedBox(
                width: 180,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF14A098),
                  ),
                  child: Text(
                    "Find my WIJHA",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
              ),
            ),
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
