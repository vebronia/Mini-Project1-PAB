import 'package:flutter/material.dart';
import '../models/destination.dart';

class AddPage extends StatefulWidget {
  final Destination? destination;
  final int? index;

  const AddPage({super.key, this.destination, this.index});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final budgetController = TextEditingController();
  final noteController = TextEditingController();

  String? selectedCategory;

  final List<String> categories = ["Pantai", "Pegunungan", "Kota"];

  @override
  void initState() {
    super.initState();

    if (widget.destination != null) {
      nameController.text = widget.destination!.name;
      locationController.text = widget.destination!.location;
      budgetController.text = widget.destination!.budget;
      noteController.text = widget.destination!.note;
      selectedCategory = widget.destination!.category;
    }
  }

  void saveData() {
    if (nameController.text.isNotEmpty &&
        locationController.text.isNotEmpty &&
        budgetController.text.isNotEmpty &&
        selectedCategory != null) {

      final updatedData = Destination(
        name: nameController.text,
        location: locationController.text,
        note: noteController.text,
        budget: budgetController.text,
        category: selectedCategory!,
      );

      Navigator.pop(context, updatedData);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Harap isi semua field termasuk kategori")),
      );
    }
  }

  Widget buildField(String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination == null
            ? "Tambah Destinasi"
            : "Edit Destinasi"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            buildField("Nama Destinasi", nameController),
            buildField("Lokasi", locationController),
            buildField("Budget", budgetController),
            buildField("Catatan", noteController),

            // ===== DROPDOWN KATEGORI =====
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: DropdownButtonFormField<String>(
                value: selectedCategory,
                items: categories.map((c) => DropdownMenuItem(
                  value: c,
                  child: Text(c),
                )).toList(),
                decoration: InputDecoration(
                  labelText: "Kategori",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: saveData,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.orange, // tombol Simpan oranye
              ),
              child: const Text(
                "Simpan",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}