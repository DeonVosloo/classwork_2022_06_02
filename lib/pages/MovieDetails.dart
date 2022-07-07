import 'package:flutter/material.dart';

import 'movies.dart';

class MovieDetails extends StatelessWidget
{
  final Movies movie;

  const MovieDetails(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text(movie.title),
        leading: Container
          (
          decoration: BoxDecoration
            (
            shape: BoxShape.circle,
            image: DecorationImage
              (
              image: AssetImage("assets/${movie.image}"),fit: BoxFit.cover,),
            ),
          ),
        ),

      body: Padding
        (
        padding: const EdgeInsets.all(3),
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Image(image: AssetImage("assets/${movie.image}"), height: 300,),

            Padding
              (
                padding: const EdgeInsets.all(3),
              child: Text(movie.year.toString() ,
                style: const TextStyle
                  (
                    color: Colors.black54,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,),
            ),

            Padding
              (
              padding: const EdgeInsets.all(3),
              child: Text(movie.description,
                style: const TextStyle
                  (
                  color: Colors.black,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.justify,),
            ),

            Center
              (
              child: ElevatedButton.icon(
                onPressed: ()
                {
                  Navigator.pop(context);
                },
                icon: const Icon
                  (
                  Icons.arrow_back_rounded,
                  size: 24.0,
                ),
                label: Text('Go Back'), // <-- Text
              ),
            ),

          ],
        ),
      ),
    );
  }
}
