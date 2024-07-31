class BookModel {
  final String title;
  final String description;
  final String author;
  final String image;
  final String genre;
  final double rating;
  final double price;
  final String url;
  String savePath;
  double progress;
  bool isLoading;
  bool isDownloaded;

  BookModel({
    required this.title,
    required this.description,
    required this.author,
    required this.image,
    required this.genre,
    required this.rating,
    required this.price,
    required this.url,
    required this.savePath,
    required this.progress,
    required this.isLoading,
    required this.isDownloaded,
  });
}
