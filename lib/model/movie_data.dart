class MovieData {
  String title;
  String rated;
  String release;
  String genre;
  String duration;
  int score;
  String description;
  String imageAsset;
  String imageBackground;

  MovieData({
    required this.title,
    required this.rated,
    required this.release,
    required this.genre,
    required this.duration,
    required this.score,
    required this.description,
    required this.imageAsset,
    required this.imageBackground,
  });
}

List<MovieData> movieList = [
  MovieData(
      title: 'Avatar',
      rated: 'PG-13',
      release: '09/01/2010',
      genre: 'Action, Adventure, Fantasy, Science Fiction',
      duration: '2h 42m',
      score: 75,
      description:
      'In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.',
      imageAsset: 'images/movie/avatar.jpg',
      imageBackground: 'images/backgroundmovie/bg_avatar.jpg'),
  MovieData(
    title: 'Demon Slayer -Kimetsu no Yaiba- The Movie: Mugen Train',
    rated: 'R',
    release: '01/06/2021',
    genre: 'Animation, Action, Adventure, Fantasy',
    duration: '1h 57m',
    score: 84,
    description:
    'Tanjirō Kamado, joined with Inosuke Hashibira, a boy raised by boars who wears a boar\'s head, and Zenitsu Agatsuma, a scared boy who reveals his true power when he sleeps, boards the Infinity Train on a new mission with the Fire Hashira, Kyōjurō Rengoku, to defeat a demon who has been tormenting the people and killing the demon slayers who oppose it!',
    imageAsset: 'images/movie/demonslayer.jpg',
    imageBackground: 'images/backgroundmovie/bg_demonslayer.jpg',
  ),
  MovieData(
    title: 'Doctor Strange in the Multiverse of Madness',
    rated: 'PG-13',
    release: '05/06/2022',
    genre: 'Fantasy, Action, Adventure',
    duration: '2h 6m',
    score: 74,
    description:
    'Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.',
    imageAsset: 'images/movie/doctorstrange.jpg',
    imageBackground: 'images/backgroundmovie/bg_doctorstrange.jpg',
  ),
  MovieData(
    title: 'Fantastic Beasts and Where to Find Them',
    rated: 'PG-13',
    release: '11/18/2016',
    genre: 'Fantasy, Adventure, Action',
    duration: '2h 12m',
    score: 74,
    description:
    'In 1926, Newt Scamander arrives at the Magical Congress of the United States of America with a magically expanded briefcase, which houses a number of dangerous creatures and their habitats. When the creatures escape from the briefcase, it sends the American wizarding authorities after Newt, and threatens to strain even further the state of magical and non-magical relations.',
    imageAsset: 'images/movie/fantasticbeast.jpg',
    imageBackground: 'images/backgroundmovie/bg_fantasticbeast.jpg',
  ),
  MovieData(
    title: 'Harry Potter and the Philosopher\'s Stone',
    rated: 'PG',
    release: '12/19/2001',
    genre: 'Adventure, Fantasy',
    duration: '2h 32m',
    score: 79,
    description:
    'Harry Potter has lived under the stairs at his aunt and uncle\'s house his whole life. But on his 11th birthday, he learns he\'s a powerful wizard—with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school\'s kindly headmaster, Harry uncovers the truth about his parents\' deaths—and about the villain who\'s to blame.',
    imageAsset: 'images/movie/harrypotter.jpg',
    imageBackground: 'images/backgroundmovie/bg_harrypotter.jpg',
  ),
  MovieData(
    title: 'Avengers: Infinity War',
    rated: 'PG-13',
    release: '04/27/2018',
    genre: 'Adventure, Action, Science Fiction',
    duration: '2h 29m',
    score: 83,
    description:
    'As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.',
    imageAsset: 'images/movie/infinitywar.jpg',
    imageBackground: 'images/backgroundmovie/bg_infinitywar.jpg',
  ),
  MovieData(
    title: 'Jurassic World',
    rated: 'PG-13',
    release: '06/10/2015',
    genre: 'Action, Adventure, Science Fiction, Thriller',
    duration: '2h 4m',
    score: 67,
    description:
    'Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully functioning dinosaur theme park, Jurassic World, as originally envisioned by John Hammond.',
    imageAsset: 'images/movie/jurasicworld.jpg',
    imageBackground: 'images/backgroundmovie/bg_jurassicworld.jpg',
  ),
  MovieData(
    title: 'Parasite',
    rated: 'R',
    release: '05/30/2019',
    genre: 'Comedy, Thriller, Drama',
    duration: '2h 13m',
    score: 85,
    description:
    'All unemployed, Ki-taek\'s family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.',
    imageAsset: 'images/movie/parasite.jpg',
    imageBackground: 'images/backgroundmovie/bg_parasite.jpg',
  ),
  MovieData(
    title: 'Red Notice',
    rated: 'PG-13',
    release: '11/05/2021',
    genre: 'Action, Comedy, Crime, Thriller',
    duration: '1h 58m',
    score: 68,
    description:
    'An Interpol-issued Red Notice is a global alert to hunt and capture the world\'s most wanted. But when a daring heist brings together the FBI\'s top profiler and two rival criminals, there\'s no telling what will happen.',
    imageAsset: 'images/movie/rednotice.jpg',
    imageBackground: 'images/backgroundmovie/bg_rednotice.jpg',
  ),
  MovieData(
    title: 'Spider-Man: No Way Home',
    rated: 'PG-13',
    release: '12/17/2021',
    genre: 'Action, Adventure, Science Fiction',
    duration: '2h 28m',
    score: 81,
    description:
    'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.',
    imageAsset: 'images/movie/spidermannowayhome.jpg',
    imageBackground: 'images/backgroundmovie/bg_spiderman.jpg',
  ),
  MovieData(
    title: 'Uncharted',
    rated: 'PG-13',
    release: '02/18/2022',
    genre: 'Action, Adventure',
    duration: '1h 56m',
    score: 72,
    description:
    'A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.',
    imageAsset: 'images/movie/uncharted.jpg',
    imageBackground: 'images/backgroundmovie/bg_uncharted.jpg',
  ),
  MovieData(
    title: 'Your Name.',
    rated: 'PG',
    release: '08/26/2016',
    genre: 'Romance, Animation, Drama',
    duration: '1h 46m',
    score: 85,
    description:
    'High schoolers Mitsuha and Taki are complete strangers living separate lives. But one night, they suddenly switch places. Mitsuha wakes up in Taki’s body, and he in hers. This bizarre occurrence continues to happen randomly, and the two must adjust their lives around each other.',
    imageAsset: 'images/movie/yourname.jpg',
    imageBackground: 'images/backgroundmovie/bg_yourname.jpg',
  ),
];

List<MovieData> tvShowList = [
  MovieData(
      title: 'Arcane',
      rated: 'TV-14',
      release: '2021',
      genre: 'Animation, Sci-Fi & Fantasy, Action & Adventure, Drama',
      duration: '39m',
      score: 91,
      description:
      'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.',
      imageAsset: 'images/tvshow/arcane.jpg',
      imageBackground: 'images/backgroundtvshow/bg_arcane.jpg'
  ),
  MovieData(
      title: 'Crash Landing on You',
      rated: '15',
      release: '2019',
      genre: 'Drama, Comedy',
      duration: '1h 25m',
      score: 88,
      description:
      'A paragliding mishap drops a South Korean heiress in North Korea -- and into the life of an army officer, who decides he will help her hide.',
      imageAsset: 'images/tvshow/cloy.jpg',
      imageBackground: 'images/backgroundtvshow/bg_cloy.jpg'
  ),
  MovieData(
      title: 'Goblin',
      rated: '15',
      release: '2016',
      genre: 'Drama, Sci-Fi & Fantasy',
      duration: '1h 17m',
      score: 88,
      description:
      'In his quest for a bride to break his immortal curse, a 939-year-old guardian of souls meets a grim reaper and a sprightly student with a tragic past.',
      imageAsset: 'images/tvshow/goblin.jpg',
      imageBackground: 'images/backgroundtvshow/bg_goblin.jpg'
  ),
  MovieData(
      title: 'Game of Thrones',
      rated: 'TV-MA',
      release: '2011',
      genre: 'Sci-Fi & Fantasy, Drama, Action & Adventure',
      duration: '1h',
      score: 84,
      description:
      'Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond.',
      imageAsset: 'images/tvshow/got.jpg',
      imageBackground: 'images/backgroundtvshow/bg_got.jpg'
  ),
  MovieData(
      title: 'Hunter x Hunter ',
      rated: 'TV-14',
      release: '2011',
      genre: 'Action & Adventure, Animation, Drama',
      duration: '24m',
      score: 88,
      description:
      'Twelve-year-old Gon Freecss one day discovers that the father he had always been told was dead was alive. His Father, Ging, is a Hunter — a member of society\'s elite with a license to go anywhere or do almost anything. Gon, determined to follow in his father\'s footsteps, decides to take the Hunter Examination and eventually find his father to prove himself as a Hunter in his own right. But on the way, he learns that there is more to becoming a Hunter than previously thought, and the challenges that he must face are considered the toughest in the world.',
      imageAsset: 'images/tvshow/hxh.jpg',
      imageBackground: 'images/backgroundtvshow/bg_hxh.jpg'
  ),
  MovieData(
      title: 'Moon Knight',
      rated: 'TV-14',
      release: '2022',
      genre: 'Action & Adventure, Sci-Fi & Fantasy, Mystery',
      duration: '47m',
      score: 82,
      description:
      'When Steven Grant, a mild-mannered gift-shop employee, becomes plagued with blackouts and memories of another life, he discovers he has dissociative identity disorder and shares a body with mercenary Marc Spector. As Steven/Marc’s enemies converge upon them, they must navigate their complex identities while thrust into a deadly mystery among the powerful gods of Egypt.',
      imageAsset: 'images/tvshow/moonknight.jpg',
      imageBackground: 'images/backgroundtvshow/bg_moonknight.jpg'
  ),
  MovieData(
      title: 'Naruto',
      rated: 'TV-PG',
      release: '2002',
      genre: 'Animation, Action & Adventure, Sci-Fi & Fantasy',
      duration: '24m',
      score: 84,
      description:
      'In another world, ninja are the ultimate power, and in the Village Hidden in the Leaves live the stealthiest ninja in the land. Twelve years earlier, the fearsome Nine-Tailed Fox terrorized the village and claimed many lives before it was subdued and its spirit sealed within the body of a baby boy. That boy, Naruto Uzumaki, has grown up to become a ninja-in-training who\'s more interested in pranks than in studying ninjutsu.. but Naruto is determined to become the greatest ninja ever!',
      imageAsset: 'images/tvshow/naruto.jpg',
      imageBackground: 'images/backgroundtvshow/bg_naruto.jpg'
  ),
  MovieData(
      title: 'The Penthouse',
      rated: '15',
      release: '2020',
      genre: 'Drama, Mystery',
      duration: '1h 10m',
      score: 87,
      description:
      'A woman puts everything on the line to achieve her goal of being able to move into a luxury penthouse in the Gangnam District. In the process, she gradually finds herself turning into a monster.',
      imageAsset: 'images/tvshow/penthouse.jpg',
      imageBackground: 'images/backgroundtvshow/bg_penthouse.jpg'
  ),
  MovieData(
      title: 'The Queen\'s Gambit',
      rated: 'TV-MA',
      release: '2020',
      genre: 'Drama',
      duration: '1h',
      score: 86,
      description:
      'In a Kentucky orphanage in the 1950s, a young girl discovers an astonishing talent for chess while struggling with addiction.',
      imageAsset: 'images/tvshow/queengambit.jpg',
      imageBackground: 'images/backgroundtvshow/bg_queengambit.jpg'
  ),
  MovieData(
      title: 'SPY x FAMILY',
      rated: 'TV-14',
      release: '2022',
      genre: 'Animation, Comedy, Action & Adventure, Crime',
      duration: '24m',
      score: 86,
      description:
      'Master spy Twilight is the best at what he does when it comes to going undercover on dangerous missions in the name of a better world. But when he receives the ultimate impossible assignment—get married and have a kid—he may finally be in over his head! \nNot one to depend on others, Twilight has his work cut out for him procuring both a wife and a child for his mission to infiltrate an elite private school. What he doesn\'t know is that the wife he\'s chosen is an assassin and the child he\'s adopted is a telepath!',
      imageAsset: 'images/tvshow/spyxfamily.jpg',
      imageBackground: 'images/backgroundtvshow/bg_spyxfamily.jpg'
  ),
  MovieData(
      title: 'Stranger Things',
      rated: 'TV-14',
      release: '2016',
      genre: 'Sci-Fi & Fantasy, Drama, Mystery',
      duration: '50m',
      score: 86,
      description:
      'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.',
      imageAsset: 'images/tvshow/strangerthings.jpg',
      imageBackground: 'images/backgroundtvshow/bg_strangerthings.jpg'
  ),
  MovieData(
      title: 'Vincenzo',
      rated: '15',
      release: '2021',
      genre: 'Action & Adventure, Comedy, Drama',
      duration: '1h 21m',
      score: 88,
      description:
      'Vincenzo Cassano is an Italian lawyer and Mafia consigliere who moves back to Korea due to a conflict within his organization. He ends up crossing paths with a sharp-tongued lawyer named Cha-young, and the two join forces in using villainous methods to take down villains who cannot be punished by the law.',
      imageAsset: 'images/tvshow/vincenzo.jpg',
      imageBackground: 'images/backgroundtvshow/bg_vincenzo.jpg'
  ),
];
