import 'package:flutter/material.dart';
import 'package:online_library/data/models/book_model.dart';

class DetailsScreen extends StatefulWidget {
  final BookModel book;
  const DetailsScreen({super.key, required this.book});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton.outlined(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  )
                ],
              ),
              Image.asset(widget.book.image),
              Text(widget.book.description),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.bookmark),
            ),
            SizedBox(
              width: 280,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF404066),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text("Download"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
