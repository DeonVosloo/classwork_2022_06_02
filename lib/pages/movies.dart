import 'package:flutter/material.dart';

class Movies
{
  String title;
  String image;
  int year;
  String description;


  Movies({required this.title, required this.image, required this.year, required this.description});
}

List<Movies> movieList =
[
  Movies(title: "Avatar", image: "avatar.jpg", year: 2009, description: "Jake, who is"
      " paraplegic, replaces his twin on the Na'vi inhabited Pandora for a"
      " corporate mission. After the natives accept him as one of their own,"
      " he must decide where his loyalties lie."),

  Movies(title: "Avengers", image: "avengers.jpg", year: 2012, description: "Nick Fury "
      "is compelled to launch the Avengers Initiative when Loki poses a threat to planet"
      " Earth. His squad of superheroes put their minds together to accomplish the task."),

  Movies(title: "Inception", image: "inception.jpg", year: 2010, description: "Cobb"
      " steals information from his targets by entering their dreams. Saito offers "
      "to wipe clean Cobb's criminal history as payment for performing an inception "
      "on his sick competitor's son."),

  Movies(title: "Thor: Ragnarok", image: "thor.jpg", year: 2017, description: "Deprived"
      " of his mighty hammer Mjolnir, Thor must escape the other side of the "
      "universe to save his home, Asgard, from Hela, the goddess of death."),

  Movies(title: "Harry potter", image: "harry.jpg", year: 2001, description: "Harry "
      "Potter, an eleven-year-old orphan, discovers that he is a wizard and is invited "
      "to study at Hogwarts. Even as he escapes a dreary life and enters a world of magic,"
      " he finds trouble awaiting him."),
];