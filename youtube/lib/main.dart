import 'package:flutter/material.dart';
import 'package:youtube/model/video_model.dart';
import 'package:youtube/ui/video_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home:HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selection=0;
  void touche(int index){
    setState(() {
      selection=index;
    });
  }
  
  List<VideoModel> items= [
    VideoModel('assets/unnamed.jpg',
        "Lionel Messi 2023 - Magical Goals, Skills & Assists - The Goat",
        "10:00",
        "https://yt3.ggpht.com/NtFiDndm0Urf5zQbfuOmr-wKLd0b27W3KWOwd-3M8CGJMyhHnI60IsFlQMkjOiBToMyF-__5oYE=s68-c-k-c0x00ffffff-no-rj",
        "Fad3nHD",
        "158 k vues",
        "il y a 1 mois"),
    VideoModel("assets/unnamed.jpg",
        "Lionel Messi 2023 - Magical Goals, Skills & Assists - The Goat",
        "10:00",
        "https://yt3.ggpht.com/NtFiDndm0Urf5zQbfuOmr-wKLd0b27W3KWOwd-3M8CGJMyhHnI60IsFlQMkjOiBToMyF-__5oYE=s68-c-k-c0x00ffffff-no-rj",
        "Fad3nHD",
        "158 k vues",
        "il y a 1 mois"),
    VideoModel("assets/unnamed.jpg",
        "Lionel Messi 2023 - Magical Goals, Skills & Assists - The Goat",
        "10:00",
        "https://yt3.ggpht.com/NtFiDndm0Urf5zQbfuOmr-wKLd0b27W3KWOwd-3M8CGJMyhHnI60IsFlQMkjOiBToMyF-__5oYE=s68-c-k-c0x00ffffff-no-rj",
        "Fad3nHD",
        "158 k vues",
        "il y a 1 mois"),

  ];
  
  
  
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black,),
        title: Image.asset('assets/téléchargement youtube.png',width: 115,),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.cast)),
          IconButton(onPressed: (){}, icon:Icon(Icons.notification_add_outlined)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
          IconButton(icon: CircleAvatar(), onPressed: () { },),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        onSelected: (value){},
                        elevation: 0,
                        label:Icon(Icons.explore_outlined),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        onSelected: (value){},
                        elevation: 0,
                        label: Text('Tous'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        onSelected: (value){},
                        elevation: 0,
                        label: Text('Nouveautés'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        onSelected: (value){},
                        elevation: 0,
                        label: Text('Jeux Vidéos'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        onSelected: (value){},
                        elevation: 0,
                        label: Text('Musique'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        onSelected: (value){},
                        elevation: 0,
                        label: Text('Algorithmes'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        onSelected: (value){},
                        elevation: 0,
                        label: Text('En direct'),
                      ),
                    )
                  ],
                ),
              ),
              videoCard(items[0]),
              videoCard(items[1]),
              videoCard(items[2])
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        onTap: touche,
        currentIndex: selection,
        items: [
          new BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Acceuil'),
          new BottomNavigationBarItem(icon: Icon(Icons.trending_up_outlined),label: 'Shorts'),
          new BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline,),label: 'Ajouter'),
          new BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined),label: 'Abonnements',),
          new BottomNavigationBarItem(icon:Icon(Icons.video_library_outlined), label: 'Bibliothèque'),
        ],
      ),
    );
  }
}

