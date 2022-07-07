import 'package:classwork_2022_06_02/pages/MovieDetails.dart';
import 'package:classwork_2022_06_02/pages/movies.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar
        (
        title: const Text("Movies to watch"),
        centerTitle: true,

      ),
      body: ListView.builder
        (
        itemCount: movieList.length,
        itemBuilder: (context, index)
        {
          Movies movie = movieList[index];
          return Card
            (
            child: ListTile
              (
              leading: Image
                (
                image: AssetImage("assets/${movie.image}"),
              ),
              title: Text(movie.title),
              subtitle: Text(movie.year.toString()),
              trailing: TextButton.icon
                (     // <-- TextButton
                onPressed: ()
                {
                  Navigator.push
                      (
                      context, MaterialPageRoute(builder: (context) => MovieDetails(movie)),
                    );
                },

                label: const Text(""),
                icon: const Icon
                  (
                  Icons.arrow_forward_rounded,
                  size: 24.0,
                ),

              ),

              // onTap: ()
              // {
              //   Navigator.push
              //     (
              //     context, MaterialPageRoute(builder: (context) => MovieDetails(movie)),
              //   );
              // },

            ),
          );
        },
      ),

    );
  }
}