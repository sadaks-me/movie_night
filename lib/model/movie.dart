class Movie {
  final String name;
  final String rating;
  final String year;
  final String description;
  final String image;

  Movie(
    this.name,
    this.rating,
    this.description,
    this.year,
    this.image,
  );
}

List<Movie> moviesData = [
  new Movie(
      'Avengers',
      '8.1/10 IMDb',
      "Nick Fury is the director of S.H.I.E.L.D., an international peace-keeping agency. The agency is a who's who of Marvel Super Heroes, with Iron Man, The Incredible Hulk, Thor, Captain America, Hawkeye and Black Widow. When global security is threatened by Loki and his cohorts, Nick Fury and his team will need all their powers to save the world from disaster which is formed by Loki and his team",
      '2012',
      'assets/images/avengers.jpg'),
  new Movie(
      'Creed II',
      '7.6/10 IMDb',
      "Years after Adonis Creed made a name for himself under Rocky Balboa's mentorship, the young boxer becomes the Heavyweight Champion of the World. While life is good with that victory and his marriage to Bianca, trouble comes to Philadelphia when Ivan Drago, the Russian boxer who killed Adonis' father, Apollo, arrives with his son, Viktor, to challenge Adonis. Against Rocky's advice, Adonis accepts the challenge without his mentor's participation and pays the price in a punishing bout he wins only by a technicality. Now injured and demoralized, Adonis cannot bring himself to back into the game, leaving his spirit and title in jeopardy. Together, Adonis' family and Rocky must find a way to rekindle Adonis' fighting spirit to face the future in whatever choice he makes. Meanwhile, the Drago family have its own troubles trying to regain the respect in their homeland that they lost at Rocky's hands as they wonder whether is it truly worth it.",
      '2018',
      'assets/images/creed.jpg'),
  new Movie(
      'Border',
      '7.2/10 IMDb',
      "A customs officer who can smell fear develops an unusual attraction to a strange traveler while aiding a police investigation which will call into question her entire existence.",
      '2018',
      'assets/images/border.jpg'),
  new Movie(
      'Fantastic Beasts: The Crimes of Grindelwald',
      '6.8/10 IMDb',
      "In an effort to thwart Grindelwald's plans of raising pure-blood wizards to rule over all non-magical beings, Albus Dumbledore enlists his former student Newt Scamander, who agrees to help, though he's unaware of the dangers that lie ahead. Lines are drawn as love and loyalty are tested, even among the truest friends and family, in an increasingly divided wizarding world.",
      '2018',
      'assets/images/fantastic.jpg'),
  new Movie(
      'The Isle',
      '6.4/10 IMDb',
      "On a remote island off the west coast of Scotland in 1846 a heavy storm hits, causing a ship to sink. Three survivors row through a thick early morning mist, lost and disorientated. The mist begins to clear and The Isle appears before them. They soon discover that it is almost abandoned except for four sole residents: an old harbour man, a farmer, his niece and a young mad woman. Once rested and recovered the sailors are desperate to leave and return to the mainland, but the promised boat never appears. One of them starts to investigate and learns of a tragedy at sea that occurred five years previously causing several young men from the island to perish. When his two shipmates meet with accidents, the myth of a ghostly siren haunting the island leads him to uncover the truth whilst he battles to save his own life.",
      '2019',
      'assets/images/isle.jpg'),
  new Movie(
      '12 Years a Slave',
      '8.1/10 IMDb',
      "Based on an incredible true story of one man's fight for survival and freedom. In the pre-Civil War United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery. Facing cruelty personified by a malevolent slave owner, as well as unexpected kindnesses, Solomon struggles not only to stay alive, but to retain his dignity. In the twelfth year of his unforgettable odyssey, Solomon's chance meeting with a Canadian abolitionist will forever alter his life.",
      '2013',
      'assets/images/slave.jpg')
];
