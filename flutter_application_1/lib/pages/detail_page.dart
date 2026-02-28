import 'package:flutter/material.dart';
import '../models/destination.dart';

class DetailPage extends StatelessWidget {
  final Destination destination;

  const DetailPage({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(destination.name)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.name,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text("📍 Lokasi: ${destination.location}"),
                const SizedBox(height: 10),
                Text("💰 Budget: Rp ${destination.budget}"),
                const SizedBox(height: 10),
                Text("📝 Catatan: ${destination.note}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}