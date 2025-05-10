import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui/widgets/button_about_place.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color bgColor = Theme.of(context).colorScheme.background;

    return Scaffold(
      // extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          // scrolledUnderElevation: 0.0,
          forceMaterialTransparency: true,
          leadingWidth: 100, //
          leading: IconButton(
            style: ButtonStyle(),
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 172,
                margin: EdgeInsets.fromLTRB(17, 0, 17, 0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  // color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(27)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    opacity: 0.8,
                    image: AssetImage(
                      'assets/images/background/maidan_nezalezhnosti.jpg',
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        'KYIV',
                        style: GoogleFonts.rowdies(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          'Место - свободы!',

                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 68,
                child: Center(
                  child: Text(
                    'Выберите интересующее место',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),

              SizedBox(
                height: 480,
                child: Stack(
                  children: [
                    ListView(
                      // shrinkWrap: true,
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      children: [
                        ButtonAboutPlace(
                          images:
                              'assets/images/background/ar_rahma_mosque.jpg',
                          placeName: "Мечеть Ар-Рахма",
                          alignment: 0.8,
                        ),
                        ButtonAboutPlace(
                          images:
                              'assets/images/background/mariinskyi_palace.jpg',
                          placeName: "Марийнский дворец",
                          alignment: 0.2,
                        ),
                        ButtonAboutPlace(
                          images:
                              'assets/images/background/andriivskyi_descent.jpg',
                          placeName: "Андреевский спуск",
                          alignment: -0.3,
                        ),
                        ButtonAboutPlace(
                          images:
                              'assets/images/background/vozdvizhenka_street.jpg',
                          placeName: "Улица Воздвиженка",
                          alignment: 0,
                        ),
                        ButtonAboutPlace(
                          images: 'assets/images/background/mother_ukraine.jpg',
                          placeName: "Родина - Мать",
                          alignment: 0,
                        ),
                      ],
                    ),

                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: IgnorePointer(
                        // чтобы градиент не блокировал нажатия
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                bgColor.withOpacity(0),
                                bgColor.withOpacity(0.1), // прозрачный
                                bgColor,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
