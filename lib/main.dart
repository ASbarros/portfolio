import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'card_skill_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: GoogleFonts.lato(fontWeight: FontWeight.bold),
          headline1: GoogleFonts.lato(fontWeight: FontWeight.bold),
          subtitle1: GoogleFonts.lato(fontWeight: FontWeight.bold),
          bodyText2: GoogleFonts.lato(fontWeight: FontWeight.bold),
          button: GoogleFonts.lato(fontWeight: FontWeight.bold),
          caption: GoogleFonts.lato(fontWeight: FontWeight.bold),
          overline: GoogleFonts.lato(fontWeight: FontWeight.bold),
          subtitle2: GoogleFonts.lato(fontWeight: FontWeight.bold),
          headline6: GoogleFonts.lato(fontWeight: FontWeight.bold),
          headline2: GoogleFonts.lato(fontWeight: FontWeight.bold),
          headline3: GoogleFonts.lato(fontWeight: FontWeight.bold),
          headline4: GoogleFonts.lato(fontWeight: FontWeight.bold),
          headline5: GoogleFonts.lato(fontWeight: FontWeight.bold),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 300, //MediaQuery.of(context).size.height * 0.45,
            toolbarHeight: 80,
            //stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: ClipRRect(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          border: Border.all(
                            color: Colors.white,
                            width: 5.0,
                          ),
                        ),
                        child: Image.asset(
                          'images/photo.jpg',
                          fit: BoxFit.cover,
                          isAntiAlias: true,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(150.0),
                    ),
                  ),
                  Flexible(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Anderson dos Santos de Barros'),
                      )),
                ],
              ),
              background:
                  Image.asset('images/background.jpg', fit: BoxFit.cover),
              centerTitle: true,
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle
              ],
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 120,
            delegate: SliverChildListDelegate([
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Olá, eu sou o Anderson!! ',
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black))
                            ],
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(FontAwesomeIcons.smile, size: 17)
                      ],
                    ),
                    SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sou formado em Bacharelado em ',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'Ciência da Computação',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: ', pela ',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'Unifagoc - MG, turma de 2017.',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Sou desenvolvedor de sistemas de informação na Empresa ',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'H5 Soluções',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: ', desde janeiro de 2021.',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Trabalhei como estagiário de TI na empresa ',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'Hetikos Assessoria Técnica em Edução',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: ', de maio de 2019 até dezembro de 2020.',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Atualmente trabalho com ',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'PHP',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  ' e faço freenlance desenvolvendo sistemas e sites usando ',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'Flutter.',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildListDelegate(
                [Divider(height: 10, color: Colors.black)]),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Skills', style: TextStyle(fontSize: 24)),
              ),
            ),
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.0,
            children: <Widget>[
              CardSkillWidget(nameCard: 'PHP', percentage: 0.8),
              CardSkillWidget(nameCard: 'JAVASCRIPT/NODE', percentage: 0.9),
              CardSkillWidget(nameCard: 'HTML/CSS', percentage: 0.7),
              CardSkillWidget(nameCard: 'FLUTTER/DART', percentage: 0.9),
              CardSkillWidget(nameCard: 'MYSQL', percentage: 0.9),
              CardSkillWidget(nameCard: 'FIREBASE', percentage: 0.5),
              CardSkillWidget(nameCard: 'PROLOG', percentage: 0.7),
              CardSkillWidget(nameCard: 'JAVA', percentage: 0.6),
              CardSkillWidget(nameCard: 'GIT', percentage: 0.9),
              CardSkillWidget(nameCard: 'PYTHON', percentage: 0.7),
              CardSkillWidget(nameCard: 'LINUX', percentage: 0.8),
              CardSkillWidget(nameCard: 'WINDOWS', percentage: 0.9),
              CardSkillWidget(
                  nameCard: 'CONCEITOS DE ARQUITETURA LIMPA', percentage: 0.6),
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildListDelegate([SizedBox(height: 50)]),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        if (await canLaunch('https://github.com/asbarros')) {
                          await launch(
                            'https://github.com/asbarros',
                            forceWebView: true,
                            enableJavaScript: true,
                          );
                        } else {
                          throw 'Could not launch ';
                        }
                      },
                      child: const Icon(FontAwesomeIcons.github),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (await canLaunch(
                            'https://www.facebook.com/ASbarros51/')) {
                          await launch(
                            'https://www.facebook.com/ASbarros51/',
                            forceWebView: true,
                            enableJavaScript: true,
                          );
                        } else {
                          throw 'Could not launch ';
                        }
                      },
                      child: const Icon(FontAwesomeIcons.facebook),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (await canLaunch(
                            'https://www.instagram.com/asbarros51/')) {
                          await launch(
                            'https://www.instagram.com/asbarros51/',
                            forceWebView: true,
                            enableJavaScript: true,
                          );
                        } else {
                          throw 'Could not launch ';
                        }
                      },
                      child: const Icon(FontAwesomeIcons.instagram),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await launch(Uri(
                            scheme: 'mailto',
                            path: 'anderson.barros0298@gmail.com',
                            queryParameters: {'subject': ''}).toString());
                      },
                      child: const Icon(FontAwesomeIcons.envelope),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
