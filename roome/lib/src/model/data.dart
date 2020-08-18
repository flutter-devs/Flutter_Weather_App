class Story {
  final List<String> image, tag1, tag2, title, subtitle;

  Story({this.image, this.tag1, this.tag2, this.title, this.subtitle});
}

List<Story> stories = [
  Story(
    image: [
      'assets/images/boy.jpg',
      'assets/images/img3.jpg',
    ],
    tag1: [
      'Inspiring',
      'Water',
    ],
    tag2: [
      'Day',
      'Green',
    ],
    title: [
      'A Boy that helps 169 children in west',
      'Want to spend a day beside beach',
    ],
    subtitle: [
      'When its come to looking your best, there are some standard tools of the trade',
      'These beach has that vibe which could possibly steal your stress.',
    ],
  ),
  Story(
    image: [
      'assets/images/moon1.jpg',
      'assets/images/img1.jpg',
    ],
    tag1: [
      'Cosmos',
      'Happy',
    ],
    tag2: [
      'Moon',
      'Heart',
    ],
    title: [
      'An astronomical body orbiting Earth',
      'A 200 year old bone structure',
    ],
    subtitle: [
      'It is the fifth-largest satellite in the Solar System, and by far the largest among planetary satellites.',
      'This skelton is 200 years old, here are some facts.',
    ],
  ),
  Story(
    image: [
      'assets/images/heart.jpg',
      'assets/images/moon.jpg',
    ],
    tag1: [
      'Heart',
      'Fact',
    ],
    tag2: [
      'Healty',
      'Antique',
    ],
    title: [
      'A muscular organ about the size of a fist',
      'Cool and Calm Moon',
    ],
    subtitle: [
      'It is located just behind and slightly left of the breastbone, pumps blood through through artries',
      'If learning to be calm and cool, just think of The Moon.',
    ],
  ),
];

class Event {
  final String image, title;
  Event({
    this.image,
    this.title,
  });
}

List<Event> events = [
  Event(
    image: 'assets/images/img2.jpg',
    title: 'Spain',
  ),
  Event(
    image: 'assets/images/img1.jpg',
    title: 'Cape Town',
  ),
  Event(
    image: 'assets/images/img3.jpg',
    title: 'Paris',
  ),
  Event(
    image: 'assets/images/img4.jpg',
    title: 'France',
  ),
  Event(
    image: 'assets/images/img5.jpg',
    title: 'France',
  ),
];
