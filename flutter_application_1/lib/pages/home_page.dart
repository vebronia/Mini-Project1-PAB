import 'package:flutter/material.dart';
import '../models/destination.dart';
import 'add_page.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Destination> travelList = [];
  String? selectedCategory; // kategori filter

  void addTravel(Destination destination) {
    setState(() {
      travelList.add(destination);
    });
  }

  void deleteTravel(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Hapus Destinasi"),
        content: const Text("Yakin mau hapus destinasi ini?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Batal"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                travelList.removeAt(index);
              });
              Navigator.pop(context);
            },
            child: const Text("Hapus"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Filter list sesuai kategori
    final filteredList = selectedCategory == null
        ? travelList
        : travelList.where((d) => d.category == selectedCategory).toList();

    return Scaffold(
      body: Column(
        children: [

          // ===== HEADER =====
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF56ab2f), Color(0xFFa8e063)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Dream Travel ✈️",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "${travelList.length} Destinasi Impian",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // ===== KATEGORI =====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryButton("Pantai"),
                categoryButton("Pegunungan"),
                categoryButton("Kota"),
                categoryButton("Semua", isAll: true),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // ===== LIST =====
          Expanded(
            child: filteredList.isEmpty
                ? const Center(
                    child: Text(
                      "Belum ada destinasi",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final data = filteredList[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(destination: data),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 4,
                          child: ListTile(
                            contentPadding:
                                const EdgeInsets.all(16),
                            leading: const Icon(
                              Icons.flight,
                              size: 30,
                              color: Colors.green,
                            ),
                            title: Text(
                              data.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              "${data.location}\nRp ${data.budget}\nKategori: ${data.category}",
                            ),
                            isThreeLine: true,
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () async {
                                    final updatedData =
                                        await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AddPage(
                                          destination: data,
                                          index: index,
                                        ),
                                      ),
                                    );

                                    if (updatedData != null) {
                                      setState(() {
                                        travelList[index] =
                                            updatedData;
                                      });
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  onPressed: () =>
                                      deleteTravel(index),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),

      // ===== FAB =====
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddPage(),
            ),
          );

          if (result != null) {
            addTravel(result);
          }
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }

  // ===== WIDGET BUTTON KATEGORI =====
  Widget categoryButton(String text, {bool isAll = false}) {
    final isSelected = (isAll && selectedCategory == null) || (selectedCategory == text);
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedCategory = isAll ? null : text;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.orange : Colors.grey[300],
        foregroundColor: isSelected ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(text),
    );
  }
}