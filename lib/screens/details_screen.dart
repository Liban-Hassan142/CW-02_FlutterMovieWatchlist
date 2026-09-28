import 'package:flutter/material.dart';

import '../models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  movie.posterPath,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Cast",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              ...movie.cast.map(
                (actor) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(actor),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Synopsis",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              Text(movie.synopsis, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
