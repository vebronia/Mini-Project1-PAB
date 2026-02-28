class Destination {
  String name;
  String location;
  String note;
  String budget;
  String category; // baru: pantai, pegunungan, kota
  bool isVisited;

  Destination({
    required this.name,
    required this.location,
    required this.note,
    required this.budget,
    required this.category,
    this.isVisited = false,
  });
}