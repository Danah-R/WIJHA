import 'package:flutter/material.dart';
import 'package:wjha/models/place_models.dart';

class PlaceDetailsPage extends StatelessWidget {
  final PlaceModels placeModel;

  const PlaceDetailsPage({super.key, required this.placeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 87, 53),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          placeModel.name ?? "",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (placeModel.images != null && placeModel.images!.isNotEmpty)
              SizedBox(
                height: 260,
                width: double.infinity,
                child: PageView(
                  children: placeModel.images!
                      .map((img) => Image.asset(img, fit: BoxFit.cover))
                      .toList(),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    placeModel.name ?? "",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    placeModel.description ?? "",
                    style: TextStyle(fontSize: 15, height: 1.4),
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
