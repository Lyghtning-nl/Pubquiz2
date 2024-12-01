export const DEFAULT_COUNTDOWN_PER_QUESTION_IN_SECONDS = 30;

export type RoundData = {
  title: string;
  questions: QuestionData;
};

export type QuestionData = {
  [key: string]: QuestionDataOptions;
};

export type QuestionDataOptions = {
  text: string;
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

export const questionDataRound0: QuestionData = {
  "1": {
    text: "0. Oefenvraag - Werkt alles?",
    image: "https://storage.googleapis.com/music-quiz/v2/testimage.jpg",
    correct: "-",
  },
};

export const questionDataRound1: QuestionData = {
  "11": {
    text: "1. Voor welke bekende serie is dit nummer geschreven?",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/illbethereforyou-friends",
    correct: "Friends",
    countdown: 60,
  },
  "12": {
    text: "2. Hoeveel inwoners telt Streefkerk bij benadering?",
    image:
      "https://storage.googleapis.com/music-quiz/v2/streefkerk-overview.jpg",
    correct: "2500 (2515)",
    type: "multi",
    options: {
      a: "~2000",
      b: "~2250",
      c: "~2500",
      d: "~2750",
    },
  },
  "13": {
    text: "3. Welke artiest zien we hier?",
    image: "/assets/question/ts.jpeg",
    correct: "Taylor Swift",
  },
  "14": {
    text: "4. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/duaLipa-Houdini.mp3",
    correct: "Dua Lipa - Houdini",
    countdown: 60,
  },
  "15": {
    text: "5. Wat doet André zijn zoontje kado?",
    audio: "https://storage.googleapis.com/music-quiz/vlieger.mp3",
    correct: "Een vlieger",
    type: "multi",
    options: {
      a: "Een PlayStation 5",
      b: "Een iPad Pro 512gb",
      c: "Een iPhone 15 Pro Max",
      d: "Een vlieger",
    },
  },
  "16": {
    text: "6. Wie schilderde de Mona Lisa?",
    image: "https://storage.googleapis.com/music-quiz/v2/monalisa.webp",
    correct: "Leonardo Da Vinci",
  },
  "17": {
    text: "7. Wat is de naam van het nummer waar deze clip bijhoort?",
    image: "https://storage.googleapis.com/music-quiz/thriller.jpg",
    correct: "Thriller",
  },
  "18": {
    text: "8. Wie zijn de makers en wat is de titel van het afgebeelde album?",
    image: "https://storage.googleapis.com/music-quiz/fmr.jpg",
    correct: "Fleetwood Mac - Rumors",
  },
  "19": {
    text: "9. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/carelesswhisper-georgemichael",
    correct: "George Michael - Careless Whisper",
    countdown: 60,
  },
  "20": {
    text: '10. Wat betekent de term "hattrick" in veel sporten?',
    image: "https://storage.googleapis.com/music-quiz/v2/hattrick.jpg",
    correct: "3x op rij een bijzondere actie",
  },
};

export const questionDataRound2: QuestionData = {
  "21": {
    text: "11. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/rockdj-robbiewilliams",

    correct: "Rock DJ - Robbie Williams",
    countdown: 60,
  },
  "22": {
    text: "12. Welke artiest zien we hier?",
    image: "https://storage.googleapis.com/music-quiz/v2/cardi-b.jpg",

    correct: "Cardi B",
  },
  "23": {
    text: "13. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/brokenwings-mrmister",

    correct: "Broken Wings - Mr. Mister",
    countdown: 60,
  },
  "24": {
    text: '14. Welk nummer begint met de tekst; <br/><br/> "Ooooh. <br/><br/> You can dance <br/><br/> You can jive"<br/><br/> ...en wie zingt het?',

    correct: "Dancing queen - Abba",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/dancingqueen-abba",
    forceCountdownMusic: true,
    countdown: 40,
    quizMasterHelpText:
      "Speel het audio fragment pas af nádat de antwoorden gegeven zijn.",
  },
  "25": {
    text: "15. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/unfaithful-rihanna",

    correct: "Rihanna - Unfaithful",
    countdown: 60,
  },
  "26": {
    text: "16. Welke artiest zien we hier?",
    image: "https://storage.googleapis.com/music-quiz/v2/jennifer-lopzer.jpg",
    correct: "Jennifer Lopez",
  },
  "27": {
    text: "17. Raad de titel + artiest",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/notimetodie-billie",

    correct: "No time to die - Billie Eilish",
    countdown: 60,
  },
  "28": {
    text: "18. Uit welk nummer komt de tekst; <br/><br/> \"I'm like a bird, I'll only fly away<br/><br/>I don't know where my soul is\" <br/><br/> ...en wie zingt het?",

    correct: "I'm like a bird, I'll only fly away - Nelly Furtado",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/imlikeabird-nellyfurtado",
    forceCountdownMusic: true,
    countdown: 40,
    quizMasterHelpText:
      "Speel het audio fragment pas af nádat de antwoorden gegeven zijn.",
  },
  "29": {
    text: "19. Wie was de leadzanger van Nirvana?",
    image: "https://storage.googleapis.com/music-quiz/v2/nirvana.jpg",

    correct: "Kurt Cobain",
  },
  "30": {
    text: "20. Raad de titel + artiest",
    audio: "https://storage.googleapis.com/music-quiz/cd.m4a",

    correct: "The mammas and the pappas - Calofornia Dreamin",
    countdown: 60,
  },
};

export const questionDataRound3: QuestionData = {
  "31": {
    text: "21. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/umbrella-baseballs",
    image:
      "https://storage.googleapis.com/music-quiz/v2/umbrella-baseballs.jpg",
    correct: "When the sun shines, we'll shine together",
    countdown: 60,
  },
  "32": {
    text: "22. Vul de missende songtekst in",
    image: "https://storage.googleapis.com/music-quiz/br-lyrics-queen.jpg",
    audio: "https://storage.googleapis.com/music-quiz/bohemian.mp3",
    correct: "Scaramouche, Scaramouche, will you do the Fandango?",
    countdown: 60,
  },
  "33": {
    text: "23. Vul de missende songtekst in.",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/thelionssleep-tightfit",
    image:
      "https://storage.googleapis.com/music-quiz/v2/thelionssleeptonight-tightfit.jpg",
    correct: "Ah Wimoweh ah wimoweh ah wimoweh ah wimoweh",
    countdown: 60,
  },
  "34": {
    text: "24. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/shapeofyou-edsheeran",
    image:
      "https://storage.googleapis.com/music-quiz/v2/shapeofyou-edsheeran.jpg",
    correct: "We push and pull like a magnet do",
    countdown: 60,
  },
  "35": {
    text: "25. Vul de missende songtekst in",
    audio: "https://storage.googleapis.com/music-quiz/houmevast.mp3",
    image: "https://storage.googleapis.com/music-quiz/hou-me-vast-lyrics.jpg",
    correct: "En bij jou zijn, is dan alles wat ik wil",
    countdown: 60,
  },
  "36": {
    text: "26. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/islandsinthestream-dollyparton",
    image:
      "https://storage.googleapis.com/music-quiz/v2/islandsinthestream-dollyparton.jpg",
    correct: "Makin love with each other, ah ah.",
    countdown: 60,
  },
  "37": {
    text: "27. Vul de missende songtekst in",
    audio: "https://storage.googleapis.com/music-quiz/mallebabbe.mp3",
    image: "https://storage.googleapis.com/music-quiz/mb-lyrics.jpg",
    correct: "Lekker stuk, malle meid, lekker dier van pleizer",
    countdown: 60,
  },
  "38": {
    text: "28. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/heartwillgoone-celinedion",
    image:
      "https://storage.googleapis.com/music-quiz/v2/heartwillgoone-celinedion.jpg",
    correct: "You're here, there's nothing I fear",
    countdown: 60,
  },
  "39": {
    text: "29. Vul de missende songtekst in",
    audio: "https://storage.googleapis.com/music-quiz/steprightup.mp3",
    image: "https://storage.googleapis.com/music-quiz/sru-lyrics.jpg",
    correct: "Rock this crazy world i'm living in",
    countdown: 60,
  },
  "40": {
    text: "30. Vul de missende songtekst in",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/allstart-smashmout",
    image:
      "https://storage.googleapis.com/music-quiz/v2/allstart-smashmout.jpg",
    correct:
      "You'll never know if you don't go. You'll never shine if you don't glow.",
    countdown: 60,
  },
};

export const questionDataRound4: QuestionData = {
  "41": {
    text: "31. Wie wordt beschouwd als de snelste man ter wereld?",
    correct: "Usain Bolt",
    image: "https://storage.googleapis.com/music-quiz/v2/speed-blur.webp",
  },
  "42": {
    text: "32. Raad de titel + artiest",
    correct: "Afscheid - Volumia",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/afscheid-volumia",
    countdown: 60,
  },
  "43": {
    text: "33. U2 tradt onlangs op in deze gigantische bol in Las Vegas. Wat is de naam van deze bol?",
    image: "https://storage.googleapis.com/music-quiz/sphere.jpg",
    correct: "The Sphere",
  },
  "44": {
    text: "34. Raad de titel + artiest",
    correct: "Cruel Summer - Bananarama",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/cruelsummer-bananarama",
    countdown: 60,
  },
  "45": {
    text: '35. Welke rapper scoorde een grote hit met het nummer "Rap God"?',
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
  "46": {
    text: "36. Raad de titel + artiest",
    correct: "Son Mieux - Multicolor",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/multicolor-sonmieux",
    countdown: 60,
  },
  "47": {
    text: "37. Wat is het tegenovergestelde van worteltrekken?",
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
  "48": {
    text: "38. Een echt 'Oh ja!'-intro, maar van welke artiest en bijhorend nummer?",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/fireflies-owlcity",
    correct: "Fireflies - Owl City",
    countdown: 60,
  },
  "49": {
    text: "39. Wie is de jongste Formule 1-wereldkampioen ooit?",
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
  "50": {
    text: "40. Welk nummer (+artiest) wordt hier verkeerd om afgespeeld?",
    audio:
      "https://storage.googleapis.com/music-quiz/v2/audio/happynewyear-abba",
    correct: "Happy new Year - Abba",
    countdown: 60,
  },
};

export const questionData: RoundData[] = [
  {
    title: "Testronde",
    questions: {
      ...questionDataRound0,
    },
  },
  {
    title: "Van alles wat",
    questions: {
      ...questionDataRound1,
    },
  },
  {
    title: "Muziek",
    questions: {
      ...questionDataRound2,
    },
  },
  {
    title: "Vuiltje op de plaat",
    questions: {
      ...questionDataRound3,
    },
  },
  {
    title: "Van alles wat",
    questions: {
      ...questionDataRound4,
    },
  },
];

export const questionDataMerged = {
  ...questionDataRound0,
  ...questionDataRound1,
  ...questionDataRound2,
  ...questionDataRound3,
  ...questionDataRound4,
};

export const questionDataMergedTyped: Record<
  string,
  (typeof questionDataMerged)[keyof typeof questionDataMerged]
> = questionDataMerged;
