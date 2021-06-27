class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Mercury',
      iconImage: 'assets/images/mercury.png',
      description:
          "Zipping around the sun in only 88 days, Mercury is the closest planet to the sun, and it's also the smallest, only a little bit larger than Earth's moon. Because its so close to the sun (about two-fifths the distance between Earth and the sun), Mercury experiences dramatic changes in its day and night temperatures: Day temperatures can reach a scorching 840  F (450 C), which is hot enough to melt lead. Meanwhile on the night side, temperatures drop to minus 290 F (minus 180 C).",
      images: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
      ]),
  PlanetInfo(2,
      name: 'Venus',
      iconImage: 'assets/images/venus.png',
      description:
          "The second planet from the sun, Venus is Earth's twin in size. Radar images beneath its atmosphere reveal that its surface has various mountains and volcanoes. But beyond that, the two planets couldn't be more different. Because of its thick, toxic atmosphere that's made of sulfuric acid clouds, Venus is an extreme example of the greenhouse effect. It's scorching-hot, even hotter than Mercury. The average temperature on Venus' surface is 900 F (465 C). At 92 bar, the pressure at the surface would crush and kill you. And oddly, Venus spins slowly from east to west, the opposite direction of most of the other planets.",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
        'https://image.shutterstock.com/image-photo/solar-system-venus-second-planet-600w-515581927.jpg'
      ]),
  PlanetInfo(3,
      name: 'Earth',
      iconImage: 'assets/images/earth.png',
      description:
          "The third planet from the sun, Earth is a waterworld, with two-thirds of the planet covered by ocean. It's the only world known to harbor life. Earth's atmosphere is rich in nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
        'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
        'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
      ]),
  PlanetInfo(4,
      name: 'Mars',
      iconImage: 'assets/images/mars.png',
      description:
          "The fourth planet from the sun is Mars, and it's a cold, desert-like place covered in dust. This dust is made of iron oxides, giving the planet its iconic red hue. Mars shares similarities with Earth: It is rocky, has mountains, valleys and canyons, and storm systems ranging from localized tornado-like dust devils to planet-engulfing dust storms. ",
      images: []),
  PlanetInfo(5,
      name: 'Jupiter',
      iconImage: 'assets/images/jupiter.png',
      description:
          "The fifth planet from the sun, Jupiter is a giant gas world that is the most massive planet in our solar system — more than twice as massive as all the other planets combined, according to NASA. Its swirling clouds are colorful due to different types of trace gases. And a major feature in its swirling clouds is the Great Red Spot, a giant storm more than 10,000 miles wide. It has raged at more than 400 mph for the last 150 years, at least. Jupiter has a strong magnetic field, and with 75 moons, it looks a bit like a miniature solar system.",
      images: []),
  PlanetInfo(6,
      name: 'Saturn',
      iconImage: 'assets/images/saturn.png',
      description:
          "The sixth planet from the sun, Saturn is known most for its rings. When polymath Galileo Galilei first studied Saturn in the early 1600s, he thought it was an object with three parts: a planet and two large moons on either side. Not knowing he was seeing a planet with rings, the stumped astronomer entered a small drawing — a symbol with one large circle and two smaller ones — in his notebook, as a noun in a sentence describing his discovery. More than 40 years later, Christiaan Huygens proposed that they were rings. The rings are made of ice and rock and scientists are not yet sure how they formed. The gaseous planet is mostly hydrogen and helium and has numerous moons.",
      images: []),
  PlanetInfo(7,
      name: 'Uranus',
      iconImage: 'assets/images/uranus.png',
      description:
          "The seventh planet from the sun, Uranus is an oddball. It has clouds made of hydrogen sulfide, the same chemical that makes rotten eggs smell so foul. It rotates from east to west like Venus. But unlike Venus or any other planet, its equator is nearly at right angles to its orbit — it basically orbits on its side. Astronomers believe an object twice the size of Earth collided with Uranus roughly 4 billion years ago, causing Uranus to tilt. That tilt causes extreme seasons that last 20-plus years, and the sun beats down on one pole or the other for 84 Earth-years at a time. ",
      images: []),
  PlanetInfo(8,
      name: 'Neptune',
      iconImage: 'assets/images/neptune.png',
      description:
          "The eighth planet from the sun, Neptune is about the size of Uranus and is known for supersonic strong winds. Neptune is far out and cold. The planet is more than 30 times as far from the sun as Earth. Neptune was the first planet predicted to exist by using math, before it was visually detected. Irregularities in the orbit of Uranus led French astronomer Alexis Bouvard to suggest some other planet might be exerting a gravitational tug. German astronomer Johann Galle used calculations to help find Neptune in a telescope. Neptune is about 17 times as massive as Earth and has a rocky core.",
      images: []),
];

class DataSource {
  static String quote =
      '"Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less."';

  static List questionAnswers = [
    {
      "question": "What is a coronavirus?",
      "answer":
          "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19."
    },
    {
      "question": "What is COVID-19?",
      "answer":
          "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019."
    },
    {
      "question": "What are the symptoms of COVID-19?",
      "answer":
          "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention."
    },
    {
      "question": "How does COVID-19 spread?",
      "answer":
          "People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales. These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick. \nWHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share updated findings."
    },
    {
      "question":
          "Can the virus that causes COVID-19 be transmitted through the air?",
      "answer":
          "Studies to date suggest that the virus that causes COVID-19 is mainly transmitted through contact with respiratory droplets rather than through the air"
    },
    {
      "question": "Can CoVID-19 be caught from a person who has no symptoms?",
      "answer":
          "The main way the disease spreads is through respiratory droplets expelled by someone who is coughing. The risk of catching COVID-19 from someone with no symptoms at all is very low. However, many people with COVID-19 experience only mild symptoms. This is particularly true at the early stages of the disease. It is therefore possible to catch COVID-19 from someone who has, for example, just a mild cough and does not feel ill.  WHO is assessing ongoing research on the period of transmission of COVID-19 and will continue to share updated findings.    "
    },
    {
      "question":
          "Can I catch COVID-19 from the feces of someone with the disease?",
      "answer":
          "The risk of catching COVID-19 from the feces of an infected person appears to be low. While initial investigations suggest the virus may be present in feces in some cases, spread through this route is not a main feature of the outbreak. WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings. Because this is a risk, however, it is another reason to clean hands regularly, after using the bathroom and before eating."
    },
    {
      "question": "How likely am I to catch COVID-19?",
      "answer":
          "The risk depends on where you  are - and more specifically, whether there is a COVID-19 outbreak unfolding there.\nFor most people in most locations the risk of catching COVID-19 is still low. However, there are now places around the world (cities or areas) where the disease is spreading. For people living in, or visiting, these areas the risk of catching COVID-19 is higher. Governments and health authorities are taking vigorous action every time a new case of COVID-19 is identified. Be sure to comply with any local restrictions on travel, movement or large gatherings. Cooperating with disease control efforts will reduce your risk of catching or spreading COVID-19.\nCOVID-19 outbreaks can be contained and transmission stopped, as has been shown in China and some other countries. Unfortunately, new outbreaks can emerge rapidly. It’s important to be aware of the situation where you are or intend to go. WHO publishes daily updates on the COVID-19 situation worldwide."
    },
    {
      "question": "Who is at risk of developing severe illness?",
      "answer":
          "While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure, heart disease, lung disease, cancer or diabetes)  appear to develop serious illness more often than others. "
    },
    {
      "question": "Should I wear a mask to protect myself?",
      "answer":
          "Only wear a mask if you are ill with COVID-19 symptoms (especially coughing) or looking after someone who may have COVID-19. Disposable face mask can only be used once. If you are not ill or looking after someone who is ill then you are wasting a mask. There is a world-wide shortage of masks, so WHO urges people to use masks wisely.\nWHO advises rational use of medical masks to avoid unnecessary wastage of precious resources and mis-use of masks\nThe most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing"
    },
    {
      "question":
          "Are antibiotics effective in preventing or treating the COVID-19?",
      "answer":
          "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection. "
    }
  ];
}

class MyUniverse {
  final int position;
  final String title;
  final String iconImage;
  final String description;

  MyUniverse(
    this.position, {
    required this.title,
    required this.iconImage,
    required this.description,
  });
}

List<MyUniverse> uni_facts = [
  MyUniverse(1,
      title: "When you look into the night sky, you are looking back in time",
      iconImage: "assets/images/Betelgeuse_star_Hubble1.jpg",
      description:
          'The stars we see in the night sky are very far away from us, so far the star light we see has taken a long time to travel across space to reach our eyes. This means whenever we look out into the night and gaze at stars we are actually experiencing how they looked in the past. For example, the bright star Vega is relatively close to us at 25 light-years away, so the light we see left the star 25 years ago; while Betelgeuse (pictured) in the constellation of Orion is 640 light-years away, so the light left the star around 1370, during the time of the Hundred Years’ War between England and France. Other stars we see are further away still, so we are seeing them much deeper in their past.'),
  MyUniverse(
    2,
    title:
        "The Hubble telescope allows us to look back billions of years into the past",
    iconImage: "assets/images/img9.jpg",
    description:
        "The Hubble Telescope enables us to look towards very distant objects in the universe. Thanks to this remarkable piece of engineering NASA has been able to create some incredible images, one of which is the Hubble Ultra Deep Field. Created using images from the telescope from 2003 and 2004, the incredible picture displays a tiny patch of the sky in immense detail; it contains 10,000 objects, most of them young galaxies, and acts as a portal back in time. In one picture we are transported 13 billion years into the past, just 400 to 800 million years after the Big Bang, which is early in terms of the universe’s history.",
  ),
  MyUniverse(3,
      title: "You can watch the Big Bang on your television",
      iconImage: "assets/images/img17.jpg",
      description:
          'Cosmic background radiation is the afterglow and heat of the Big Bang, the momentous event that kick-started our universe 13.7 billion years ago. This cosmic echo exists throughout the universe, and amazingly we can use an old-fashioned television set to catch a glimpse of it. When a television is not tuned to a station you can see the black and white fuzz and clacking white noise, around 1% of this interference is made up cosmic background radiation – the afterglow of creation.'),
  MyUniverse(4,
      title: "There’s a giant cloud of alcohol in Sagittarius B",
      iconImage: "assets/images/img4.jpg",
      description:
          'Sagittarius B is a vast molecular cloud of gas and dust floating near the centre of the Milky Way, 26,000 light-years from Earth, 463,000,000,000 kilometres in diameter and, amazingly, it contains 10-billion-billion-billion litres of alcohol. The vinyl alcohol in the cloud is far from the most flavoursome tipple in the universe, but it is an important organic molecule which offers some clues how the first building blocks of life-forming substances are produced.'),
  MyUniverse(5,
      title:
          "There’s a planet-sized diamond in Centaurus named after a Beatles song",
      iconImage: "assets/images/img12.jpg",
      description:
          'Astronomers have discovered the largest known diamond in our galaxy, it’s a massive lump of crystallised diamond called BPM 37093, otherwise known as Lucy after The Beatles’ song Lucy in the Sky with Diamonds. Found 50 light-years away in the constellation of Centaurus, Lucy is about 25,000 miles across, so much larger then planet Earth, and weighs in at a massive 10 billion-trillion-trillion carats.'),
  MyUniverse(6,
      title:
          "It takes 225 million years for our Sun to travel round the galaxy",
      iconImage: "assets/images/img13.jpg",
      description:
          'Whilst the Earth and the other planets within our solar system orbit around the Sun, the Sun itself is orbiting around the centre of our galaxy, the Milky Way. It takes the Sun 225 million years to perform a complete circuit of the galaxy. The last time the Sun was in its current position in the galaxy the super-continent Pangaea was just about starting to break apart and early dinosaurs were making an appearance.'),
  MyUniverse(7,
      title: "Our solar system’s biggest mountain is on Mars",
      iconImage: "assets/images/img21.jpg",
      description:
          'Olympus Mons on Mars is the tallest mountain on any of the planets of the Solar System. The mountain is a gigantic shield volcano (similar to volcanoes found in the Haiiwain Islands) standing at 26 kilometres tall and sprawling 600 kilometres across. To put this into scale, this makes the mountain almost three times the height of Mount Everest.'),
  MyUniverse(8,
      title: "Uranus spins on its side, with some rather strange results",
      iconImage: "assets/images/img3.jpg",
      description:
          'Most of the planets in the Solar System spin on an axis similar to the Sun’s; slight tilts in a planet’s axis causes seasons as different parts become slightly closer or further from the sun during their orbit. Uranus is an exceptional planet in many ways, not least because it spins almost completely on its side in relation to the Sun. This results in very long seasons – each pole gets around 42 Earth years of continuous summer sunlight, followed by a wintry 42-year period of darkness. Uranus’s northern hemisphere enjoyed its last summer solstice in 1944 and will see in the next winter solstice in 2028.'),
  MyUniverse(9,
      title: "A year on Venus is shorter than its day",
      iconImage: "assets/images/img20.jpg",
      description:
          'Venus is the slowest rotating planet in our Solar System, so slow it takes longer to fully rotate than it does to complete its orbit. This means Venus has days that last longer than its years. It’s also home to one of the most inhospitable environments imaginable, with constant electronic storms, high CO2 readings, and it’s shrouded by clouds of sulfuric acid.'),
  MyUniverse(10,
      title:
          "Neutron stars are the fastest spinning objects known in the universe",
      iconImage: "assets/images/img14.jpg",
      description:
          'Neutron stars are thought to be the fastest spinning objects in the universe. Pulsars are a particular type of neutron star that emits a beam of radiation which can be observed as a pulse of light as the star spins. The rate of this pulse allows astronomers to measure the rotation.The fastest spinning known pulsar is the catchily-titled PSR J1748-2446ad, which has an equator spinning at 24% the speed of light, which translates to over 70,000 kilometres per second. An artist’s impression of what this must look like is pictured above.'),
  MyUniverse(11,
      title: "A spoonful of a neutron star weighs about a billion ton",
      iconImage: "assets/images/img1.jpg",
      description:
          'Neutron stars spin incredibly quickly and are also incredibly dense. It is estimated, if you could collect a tablespoon of matter from the centre of a neutron star, it would weigh about one billion tons.'),
  MyUniverse(12,
      title:
          "The Voyager 1 spacecraft is the most distant human-made object from Earth",
      iconImage: "assets/images/img2.jpg",
      description:
          'The Voyager Program launched two spacecraft, Voyager 1 and Voyager 2, in 1977. The probes explored the planets and moons of the outer Solar System over several decades and are now continuing their mission to travel through the heliosphere at the edge of our Solar System and continue to voyage into interstellar space.   On March 20 2013, Voyager 1 became the first human-made object to leave the Solar Sytem and is now the furthest human-made object from Earth, currently 124.34 Astronomical Units away. In laymen terms, this means it’s around 1.15581251×1010 miles away. Putting it mildly this is a long way from home.'),
  MyUniverse(13,
      title: "Voyager 1 captured the most distant photograph of Earth",
      iconImage: "assets/images/img8.png",
      description:
          'In 1990, as part of the spacecraft’s ongoing mission, Voyager 1 turned its camera back on our home planet and took a picture. This became known as The Pale Blue Dot. Seen from 6 billion kilometres away, the Earth appears as a tiny blue speck in the depths of space. Astronomer Carl Sagan, who first suggested the idea of the photograph, noted, “From this distant vantage point, the Earth might not seem of any particular interest. But for us, it’s different. Consider again that dot.That’s here. That’s home. That’s us'),
  MyUniverse(14,
      title:
          " Scientists are looking for evidence of extraterrestrial life on Earth",
      iconImage: "assets/images/img7.gif",
      description:
          'The Search for Extra-Terrestrial Intelligence (SETI) is a project to discover whether intelligent life exists elsewhere in the universe and how we may contact extraterrestrial species. The search includes looking for life on other planets and moons. For instance, some of Jupiter’s moons (such as Io) are promising places to look for evidence of primitive life, but the search for extraterrestrial life includes scientific research on Earth.If scientists can disocver evidence life has generated independently more than once it would suggest life could occur in more than one place, for more than one time. For this reason scientists are searching for evidence that life could have happened more than once on earth, with intriguing prospects for the universe as a result.'),
  MyUniverse(15,
      title: "It is estimated there are 400 billion stars in our galaxy",
      iconImage: "assets/images/img5.jpg",
      description:
          'Our Sun is essential to us, the centre of our Solar System, and our source of light and energy, but it is just one of many, many stars that make up our home galaxy, the Milky Way. Current estimates suggest there are around 400 billion stars sharing our galaxy. The artist’s concept above shows what a a dust disk around a baby star could well look like.'),
  MyUniverse(16,
      title:
          "There could be 500 million planets capable of supporting life in our galaxy",
      iconImage: "assets/images/img11.jpg",
      description:
          'Scientists searching for extraterrestrial life focus on “Goldilocks Planets“; these are planets which fall into a star’s habitable zone. Planet Earth seems to have exactly the right conditions for life to exist – its distance from the Sun means the temperature is right, water can exist as a liquid solid and a gas, and there are the right combination of chemical compounds available to build complex life forms. Other planets thought to have similar features are known as Goldilocks planets. In the Milky Way alone there are estimated to be 500 million potential Goldilocks planets, so if life can exist in places other than Earth there is a huge number of potential planets on which it might thrive. If these numbers are applied to all the galaxies in the universe there could be a staggering variety of planets capable of supporting life. Of course, we have no evidence life exists elsewhere, but if it does there are plenty of places for it to set up home.'),
  MyUniverse(17,
      title:
          "There are probably more than 170 billion galaxies in the observable universe",
      iconImage: "assets/images/img6.jpg",
      description:
          'Different calculations provide different numbers for how many galaxies there are in the observable universe – that is the part of the universe we can see from Earth with our current technology, there maybe many more but they are simply to far away for our telescopes to detect. Using data from the Hubble Telescope astronomers have calculated there are likely to be around 170 billion galaxies in the observable universe.'),
  MyUniverse(18,
      title: "There could be an infinite number of universes",
      iconImage: "assets/images/img10.jpg",
      description:
          'This is more speculative theory than a fact, but several branches of mathematics, quantum mechanics, and astrophysics have all come to similar conclusions: our universe is just one of many and we actually exist in a ‘multiverse’.There are different ideas of how this could be, one being the concept of atoms only capable of being arranged in a finite number of ways in time and space, ultimately leading to the repititon of events and people. Other theories propose bubble or parallel universes and ‘braneworlds’ that hover just out of reach of the dimensions we experience. Although these concepts seem like the far-fetched ideas of science-fiction, they are actually proving to be the most elegant solutions to problems thrown up by our discoveries of how the universe works.'),
  MyUniverse(19,
      title: "The human brain is the most complex object in the known universe",
      iconImage: "assets/images/brain.jpg",
      description:
          'Our brains are remarkably complex objects with a hundred billion neurons, a quadrillion connections, and we still know very little about how this organic super computer operates. But we do know the human brain is the most complicated thing we have yet discovered.It gives us the power to form language and culture, consciousness, the idea of self, the ability to learn, and understand the universe and reflect on our place within it. We even have an inbuilt “model of gravity“, which is pretty useful.'),
  MyUniverse(20,
      title: "We are all made of stardust",
      iconImage: "assets/images/img22.jpg",
      description:
          'This may sound fanciful, but the reality is almost every element found on Earth was created in the burning core of a star, all the stuff that makes up life on Earth, therefore our bodies are made from stardust. NASA have studied stardust extensively, and you can read more about their research on their official website. A NASA stardust canister is pictured above.In the words of Carl Sagan, “The nitrogen in our DNA, the calcium in our teeth, the iron in our blood, the carbon in our apple pies were made in the interiors of collapsing stars. We are made of starstuff.”'),
];
