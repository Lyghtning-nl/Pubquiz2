export const DEFAULT_COUNTDOWN_PER_QUESTION_IN_SECONDS = 30;

export type QuestionData = {
  [key: number]: QuestionDataOptions;
};

export type QuestionDataOptions = {
  text: string;
  round: number;
  audio?: string;
  image?: string;
  correct?: string;
  type?: "multi";
  options?: Record<string, string>;
  countdown?: number;
  disableCountdownMusic?: boolean;
  overrideTargetGroupForFading?: number;
  forceCountdownMusic?: boolean;
  quizMasterHelpText?: string;
};

export const questionDataRound0 = {
  1: {
    text: "0. Oefenvraag - Werkt alles?",
    round: 0,
    image: "https://storage.googleapis.com/music-quiz/v2/testimage.jpg",
    correct: "-",
  },
};

export const questionDataRound1 = {
  11: {
    text: "1. Voor welke bekende serie is dit nummer geschreven?",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/illbethereforyou-friends",
    round: 1,
    correct: "Friends",
    countdown: 60,
  },
  12: {
    text: "2. Hoeveel inwoners telt Streefkerk bij benadering?",
    image:
      "https://storage.googleapis.com/music-quiz/v2/streefkerk-overview.jpg",
    correct: "2500 (2515)",
    round: 1,
    type: "multi",
    options: {
      a: "~2000",
      b: "~2250",
      c: "~2500",
      d: "~2750",
    },
  },
  13: {
    text: "3. Wat zeiden ze in de ballentent op 4 mei 2024 om 20:02",
    image: "https://storage.googleapis.com/music-quiz/v2/ballentent.jpg",
    round: 1,
    correct: "?",
  },
  14: {
    text: "4. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/duaLipa-Houdini.mp3",
    round: 1,
    correct: "Dua Lipa - Houdini",
    countdown: 60,
  },
  15: {
    text: "5. Wat doet André zijn zoontje kado?",
    audio: "https://storage.googleapis.com/music-quiz/vlieger.mp3",
    // image: "https://storage.googleapis.com/music-quiz/vlieger-lyrics.jpg",
    round: 1,
    correct: "Een vlieger",
    type: "multi",
    options: {
      a: "Een PlayStation 5",
      b: "Een iPad Pro 512gb",
      c: "Een iPhone 15 Pro Max",
      d: "Een vlieger",
    },
  },
  16: {
    text: "6. Wie schilderde de Mona Lisa?",
    image: "https://storage.googleapis.com/music-quiz/v2/monalisa.webp",
    correct: "Leonardo Da Vinci",
    round: 1,
  },
  17: {
    text: "7. Wat is de naam van het nummer waar deze clip bijhoort?",
    image: "https://storage.googleapis.com/music-quiz/thriller.jpg",
    correct: "Thriller",
    round: 1,
  },
  18: {
    text: "8. Wie zijn de makers en wat is de titel van het afgebeelde album?",
    image: "https://storage.googleapis.com/music-quiz/fmr.jpg",
    correct: "Fleetwood Mac - Rumors",
    round: 1,
  },
  19: {
    text: "9. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/carelesswhisper-georgemichael",
    round: 1,
    correct: "George Michael - Careless Whisper",
    countdown: 60,
  },
  20: {
    text: '10. Wat betekent de term "hattrick" in veel sporten?',
    round: 1,
    image: "https://storage.googleapis.com/music-quiz/v2/hattrick.jpg",
    correct: "3x op rij een bijzondere actie",
  },
};

export const questionDataRound2 = {
  21: {
    text: "11. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/rockdj-robbiewilliams",
    round: 2,
    correct: "Rock DJ - Robbie Williams",
    countdown: 60,
  },
  22: {
    text: "12. Welke artiest zien we hier?",
    image: "https://storage.googleapis.com/music-quiz/v2/cardi-b.jpg",
    round: 2,
    correct: "Cardi B",
  },
  23: {
    text: "13. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/brokenwings-mrmister",
    round: 2,
    correct: "Broken Wings - Mr. Mister",
    countdown: 60,
  },
  24: {
    text: '14. Welk nummer begint met de tekst; <br/><br/> "Ooooh. <br/><br/> You can dance <br/><br/> You can jive"<br/><br/> ...en wie zingt het?',
    round: 2,
    correct: "Dancing queen - Abba",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/dancingqueen-abba",
    forceCountdownMusic: true,
    countdown: 40,
    quizMasterHelpText:
      "Speel het audio fragment pas af nádat de antwoorden gegeven zijn.",
  },
  25: {
    text: "15. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/unfaithful-rihanna",
    round: 2,
    correct: "Rihanna - Unfaithful",
    countdown: 60,
  },
  26: {
    text: "16. Welke artiest zien we hier?",
    image: "https://storage.googleapis.com/music-quiz/v2/jennifer-lopzer.jpg",
    round: 2,
    correct: "Jennifer Lopez",
  },
  27: {
    text: "17. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/notimetodie-billie",
    round: 2,
    correct: "No time to die - Billie Eilish",
    countdown: 60,
  },
  28: {
    text: "18. Uit welk nummer komt de tekst; <br/><br/> \"I'm like a bird, I'll only fly away<br/><br/>I don't know where my soul is\" <br/><br/> ...en wie zingt het?",
    round: 2,
    correct: "I'm like a bird, I'll only fly away - Nelly Furtado",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/imlikeabird-nellyfurtado",
    forceCountdownMusic: true,
    countdown: 40,
    quizMasterHelpText:
      "Speel het audio fragment pas af nádat de antwoorden gegeven zijn.",
  },
  29: {
    text: "19. Wie was de leadzanger van Nirvana?",
    image: "https://storage.googleapis.com/music-quiz/v2/nirvana.jpg",
    round: 2,
    correct: "Kurt Cobain",
  },
  // 30: {
  //   text: "20. Raad de titel + artiest 🎄",
  //   audio: "https://storage.googleapis.com/music-quiz/v2/audio/snowman-sia",
  //   round: 2,
  //   correct: "Snowman - Sia",
  //   countdown: 60,
  // },
  30: {
    text: "20. Raad de titel + artiest",
    audio: "https://storage.googleapis.com/music-quiz/cd.m4a",
    round: 2,
    correct: "The mammas and the pappas - Calofornia Dreamin",
    countdown: 60,
  },
  // 25: {
  //   text: "15. U2 tradt onlangs op in deze gigantische bol in Las Vegas. Wat is de naam van deze bol?",
  //   image: "https://storage.googleapis.com/music-quiz/sphere.jpg",
  //   correct: "The Sphere",
  //   round: 2,
  // },
  // 26: {
  //   text: "16. Raad de titel + artiest",
  //   audio: "https://storage.googleapis.com/music-quiz/dotc.m4a",
  //   round: 2,
  //   correct: "Lionel Richie - Dancing on the Ceiling",
  // },
  // 27: {
  //   text: "17. Wie zijn de makers en wat is de titel van het afgebeelde album?",
  //   image: "https://storage.googleapis.com/music-quiz/fmr.jpg",
  //   correct: "Fleetwood Mac - Rumors",
  //   round: 2,
  // },

  // 29: {
  //   text: "19. Welke artiest zien we hier?",
  //   image: "https://storage.googleapis.com/music-quiz/ts.jpeg",
  //   correct: "Taylor Swift",
  //   round: 2,
  // },
  // 30: {
  //   text: "20. Raad de titel + artiest",
  //   audio: "https://storage.googleapis.com/music-quiz/hdiyl.m4a",
  //   round: 2,
  //   correct: "Bee Gees - How deep is your love",
  // },
};

export const questionDataRound3 = {
  31: {
    text: "21. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/umbrella-baseballs",
    image:
      "https://storage.googleapis.com/music-quiz/v2/umbrella-baseballs.jpg",
    round: 3,
    correct: "When the sun shines, we'll shine together",
    countdown: 60,
  },
  32: {
    text: "22. Vul de missende songtekst in",
    round: 3,
    image: "https://storage.googleapis.com/music-quiz/br-lyrics-queen.jpg",
    audio: "https://storage.googleapis.com/music-quiz/bohemian.mp3",
    correct: "Scaramouche, Scaramouche, will you do the Fandango?",
    countdown: 60,
  },
  33: {
    text: "23. Vul de missende songtekst in.",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/thelionssleep-tightfit",
    image:
      "https://storage.googleapis.com/music-quiz/v2/thelionssleeptonight-tightfit.jpg",
    round: 3,
    correct: "Ah Wimoweh ah wimoweh ah wimoweh ah wimoweh",
    countdown: 60,
  },
  34: {
    text: "24. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/shapeofyou-edsheeran",
    image:
      "https://storage.googleapis.com/music-quiz/v2/shapeofyou-edsheeran.jpg",
    round: 3,
    correct: "We push and pull like a magnet do",
    countdown: 60,
  },
  35: {
    text: "25. Vul de missende songtekst in",
    audio: "https://storage.googleapis.com/music-quiz/houmevast.mp3",
    image: "https://storage.googleapis.com/music-quiz/hou-me-vast-lyrics.jpg",
    round: 3,
    correct: "En bij jou zijn, is dan alles wat ik wil",
    countdown: 60,
  },
  36: {
    text: "26. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/islandsinthestream-dollyparton",
    image:
      "https://storage.googleapis.com/music-quiz/v2/islandsinthestream-dollyparton.jpg",
    round: 3,
    correct: "Makin love with each other, ah ah.",
    countdown: 60,
  },
  37: {
    text: "27. Vul de missende songtekst in",
    audio: "https://storage.googleapis.com/music-quiz/mallebabbe.mp3",
    image: "https://storage.googleapis.com/music-quiz/mb-lyrics.jpg",
    round: 3,
    correct: "Lekker stuk, malle meid, lekker dier van pleizer",
    countdown: 60,
  },
  38: {
    text: "28. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/heartwillgoone-celinedion",
    image:
      "https://storage.googleapis.com/music-quiz/v2/heartwillgoone-celinedion.jpg",
    round: 3,
    correct: "You're here, there's nothing I fear",
    countdown: 60,
  },
  39: {
    text: "29. Vul de missende songtekst in",
    audio: "https://storage.googleapis.com/music-quiz/steprightup.mp3",
    image: "https://storage.googleapis.com/music-quiz/sru-lyrics.jpg",
    round: 3,
    correct: "Rock this crazy world i'm living in",
    countdown: 60,
  },
  40: {
    text: "30. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/allstart-smashmout",
    image:
      "https://storage.googleapis.com/music-quiz/v2/allstart-smashmout.jpg",
    round: 3,
    correct:
      "You'll never know if you don't go. You'll never shine if you don't glow.",
    countdown: 60,
  },
};

export const questionDataRound4 = {
  41: {
    text: "31. Wie wordt beschouwd als de snelste man ter wereld?",
    round: 4,
    correct: "Usain Bolt",
    image: "https://storage.googleapis.com/music-quiz/v2/speed-blur.webp",
  },
  42: {
    text: "32. Raad de titel + artiest",
    round: 4,
    correct: "Afscheid - Volumia",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/afscheid-volumia",
    countdown: 60,
  },

  // 43: {
  //   text: "33. Onder welke naam is de Dotterbloem, vanwege het overmatige alcoholgebruik, ook wel bekend?",
  //   image: "https://storage.googleapis.com/music-quiz/v2/dotterbloem.jpg",
  //   correct: "De Zotterbloem",
  //   round: 4,
  // },
  43: {
    text: "33. U2 tradt onlangs op in deze gigantische bol in Las Vegas. Wat is de naam van deze bol?",
    image: "https://storage.googleapis.com/music-quiz/sphere.jpg",
    correct: "The Sphere",
    round: 4,
  },
  44: {
    text: "34. Raad de titel + artiest",
    round: 4,
    correct: "Cruel Summer - Bananarama",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/cruelsummer-bananarama",
    countdown: 60,
  },
  45: {
    text: '35. Welke rapper scoorde een grote hit met het nummer "Rap God"?',
    round: 4,
    correct: "Eminem",
    image: "https://storage.googleapis.com/music-quiz/v2/rapscene.jpg",
    type: "multi",
    options: {
      a: "Jay-Z",
      b: "Eminem",
      c: "Dr. Dre",
      d: "Kendrick Lamar",
    },
  },
  46: {
    text: "36. Raad de titel + artiest",
    round: 4,
    correct: "Son Mieux - Multicolor",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/multicolor-sonmieux",
    countdown: 60,
  },
  47: {
    text: "37. Wat is het tegenovergestelde van worteltrekken?",
    round: 4,
    correct: "Kwadrateren",
    type: "multi",
    image: "https://storage.googleapis.com/music-quiz/v2/worteldelen.png",
    options: {
      a: "Delen",
      b: "Exponentiëren",
      c: "Afronden",
      d: "Kwadrateren",
    },
  },
  48: {
    text: "38. Een echt 'Oh ja!'-intro, maar van welke artiest en bijhorend nummer?",
    round: 4,
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/fireflies-owlcity",
    correct: "Fireflies - Owl City",
    countdown: 60,
  },
  49: {
    text: "39. Wie is de jongste Formule 1-wereldkampioen ooit?",
    round: 4,
    correct: "Sebastian Vettel",
    image: "https://storage.googleapis.com/music-quiz/v2/f1.jpg",
    type: "multi",
    options: {
      a: "Lewis Hamilton",
      b: "Max Verstappen",
      c: "Ayrton Senna",
      d: "Sebastian Vettel",
    },
  },
  50: {
    text: "40. Welk nummer (+artiest) wordt hier verkeerd om afgespeeld?",
    round: 4,
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/happynewyear-abba",
    correct: "Happy new Year - Abba",
    countdown: 60,
  },
};

export type RoundTitles = {
  [key: number]: string;
};

export const roundTitles: RoundTitles = {
  0: "Testronde",
  1: "Van alles wat",
  2: "Muziek",
  3: "Vuiltje op de plaat",
  4: "Van alles wat",
};

export const questionDataMerged = {
  ...(questionDataRound0 as QuestionData),
  ...(questionDataRound1 as QuestionData),
  ...(questionDataRound2 as QuestionData),
  ...(questionDataRound3 as QuestionData),
  ...(questionDataRound4 as QuestionData),
};

export const questionDataMergedTyped: Record<
  string,
  (typeof questionDataMerged)[keyof typeof questionDataMerged]
> = questionDataMerged;
