import 'package:portfolio_app/model/model.dart';
export 'package:url_launcher/url_launcher.dart';
export 'package:google_fonts/google_fonts.dart';

class Config {
  static const String titlePage = 'Portfolio';

  static const String resumeUrl =
      "https://drive.google.com/file/d/1t05dLmQVa4GfkVJp3yYXCrUH1DUdzmdJ/view?usp=share_link";
  static const String githubUrl = "https://github.com/AomineD";
  static const String linkedinUrl =
      "https://www.linkedin.com/in/diegogciafdez/";
  static const String twitterUrl = "https://twitter.com/AominDki";
  static const String mailTo = "mailto:diegogciafdez@gmail.com";

  // MAIN SECTION
  static const String yourInfoMainPage =
      "I'm passionate Mobile developer having an experience of Android and Flutter applications with Kotlin, Java, and Dart. Backend rest apis with PHP, CodeIgniter and Game development with Unity3D in C#";

  static const String titleMainPage = "Hi, I'm Diego";

  // Section 2
  static const String subtitleWhatIDo =
      "Creative mobile developer who loves make new things and learn on the way";

  // Experience 1
  static const List<String> mobileDevExp = [
    "🌟 Building responsive Android apps in Kotlin",
    "📡 Consume API Rest with retrofit/volley in Java/Kotlin",
    "📲 Implementation of Coroutines, DaggerHilt, Room and MVVM in Kotlin",
    "⚡ Building Android library/sdk in Java/Kotlin",
    "🚀 Experience of using Google, Facebook, Onesignal, Firebase SDK's"
  ];

  static const skillSet1 = SkillSetModel(
      "Mobile Development",
      ["mobile/java.png", "mobile/dart.png", "mobile/kotlin.png"],
      mobileDevExp,
      "dev_mobile");

  //Experience 2
  static const List<String> gameDevExp = [
    "🎮 Building 2D/3D games for Android & iOS",
    "🌎 Experience of using Photon Multiplayer games for Android & iOS",
    "🕹 Building own Unity SDK in C# to agilize process",
    "🚀 Experience of using Google, Facebook, Onesignal, Firebase SDK's for Unity"
  ];

  static const skillSet2 = SkillSetModel(
      "Game Development", ["software/csharp.png"], gameDevExp, "dev_game");

  //Experience 3
  static const List<String> softDevExp = [
    "🛰 Building REST APIs in CodeIgniter(PHP)",
    "✨ Editing HTML/PHP Web pages - Web admin",
    "🎯 Using VSCode, Android Studio and Unity to make great things",
  ];

  static const skillSet3 = SkillSetModel(
      "Software Development",
      [
        "backend/javascript.png",
        "backend/php.png",
        "software/android_studio.png",
        "software/flutter.png",
        "software/unity3d.png",
      ],
      softDevExp,
      "dev_animation2");

  // EXPERIENCE ON COMPANIES WIDGET
  static List<List<ExperienceModel>> experiences = [
    [
      ExperienceModel(
        "ColVen Games",
        "colven_backgr.png",
        "April 2018- Dec 2018",
        "Jr Game Developer",
        "I worked as Game developer building 2D and 3D Games using Unity Engine (C#) and PHP for backend",
        alternativeCardColor: true,
      ),
      ExperienceModel(
        "Wineberry & Halley",
        "wineberry.png",
        "Jan 2019 - July 2021",
        "Freelance Android Developer",
        "I worked as Android developer to develop applications for entertainment, blogs, art and more in Java, using most Android SDK's.",
        alternativeCardColor: false,
      )
    ],
    [
      ExperienceModel(
          "Moberest",
          "moberest.png",
          "Jan 2022 - April 2022",
          "Freelance Software Developer",
          "I worked as Android and Backend developer to building applications in Kotlin and PHP, using most Android SDK's and CodeIgniter.",
          alternativeCardColor: false),
      ExperienceModel(
        "Utopia Games",
        "utopia.png",
        "April 2022 - Today",
        "Single Game Developer",
        "I worked as Game Developer to build, design and release Utopia Guardians game.",
        alternativeCardColor: true,
      )
    ],
  ];

  // Projects list

  // EXPERIENCE ON COMPANIES WIDGET
  static List<List<ProjectModel>> projects = [
    [
      ProjectModel(
        "DrawAI",
        "Artifficial Inteligence Tex-to-image application made in Kotlin with Dall-e mini, using retrofit, DaggerHilt, Room, Coroutines, etc",
      ),
      ProjectModel(
        "Ghost detector",
        "Application/Game to detect ghost nearby, using Firebase SDK's, Notifications, Google Admob, Lottie, MultiLocalization config, backend API-Rest made in PHP, etc",
        projectUrl:
            "https://play.google.com/store/apps/details?id=com.mobincube.detector_de_fantasmas_real_detektor_hantu_seram_di_rumah.sc_DVQ29N",
      )
    ],
    [
      ProjectModel(
        "Utopia Guardians",
        "2D Game 'Parchis Style' made in Unity3d, using Photon for multiplayer features, Firebase SDK's, Onesignal, In-App purchases, Google Admob, backend made in PHP Laravel",
        projectUrl:
            "https://play.google.com/store/apps/details?id=ludo.parchis.pro.battle.royale",
      ),
      ProjectModel("PlayDede",
          "Edit and develop current Project Kotlin code, implement new features like Chromecast, video scrapping fixings, sign up and login",
          projectUrl: "https://playdede.nu/android/releases/latest/download")
    ],
    [
      ProjectModel(
        "Ticket app",
        "Kotlin Ticket app with Dagger Hilt, MVVM, SQLite and Google maps SDK",
        githubUrl: "https://github.com/AomineD/application-test",
      ),
      ProjectModel("MNA",
          "It's an Android Library connected to a web API for change remotely actual Application Network Ad, it's made in Java",
          githubUrl: "https://github.com/AomineD/MNA")
    ],
    [
      ProjectModel(
        "Portfolio",
        "Web portfolio made in Dart/Flutter, using Lottie, Animations, url-package, themes",
        githubUrl: "https://github.com/AomineD/FlutterPortfolio",
      )
    ],
  ];
}
