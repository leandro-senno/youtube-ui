import 'package:flutter/material.dart';
import 'package:project_flutter/model/video_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<VideoModel> items = [
    VideoModel(
      "https://i.ytimg.com/vi/6AI-gFM8gco/maxresdefault.jpg",
      "check in & mern ecommerce course release",
      "13:14",
      "https://yt3.ggpht.com/ytc/AKedOLSxHOOxxa9Af8Bfb2XMop3lm4tor9bViWiC-d5aaw=s176-c-k-c0x00ffffff-no-rj-mo",
      "Traversy Media",
      "91k views",
      "Sep 30, 2020",
    ),
    VideoModel(
      "https://i.ytimg.com/vi/lHhRhPV--G0/maxresdefault.jpg",
      "Construa um player de musica usando flutter",
      "39:17",
      "https://yt3.ggpht.com/JPKP2DEKZIGK9tsW2klYUyaN9Lm8OXGdOVKKas9jmLRerzVUqmOC94rI9-bnTp65IVTIBhykkA=s176-c-k-c0x00ffffff-no-rj-mo",
      "Doctor Code",
      "18.8k views",
      "Mar 28, 2022",
    ),
    VideoModel(
      "https://i.ytimg.com/vi/TaiOPM4oeyY/maxresdefault.jpg",
      "Flutter em 100 segundos",
      "2:00",
      "https://yt3.ggpht.com/ytc/AKedOLTcIl6kKt3lEPJEySUf_hpHiKDKiFeo9eWPReLysQ=s176-c-k-c0x00ffffff-no-rj-mo",
      "Fireship",
      "442k views",
      "Apr 14, 2022",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Vamos começar configurando o background do aplcativo
        backgroundColor: const Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: Image.asset(
            "assets/youtube_logo.png",
            width: 100,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Explorar",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  width: double.infinity,
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          elevation: 0,
                          onSelected: (valeu) {},
                          label: const Text("Tudo"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          elevation: 0,
                          onSelected: (valeu) {},
                          label: const Text("Musica"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          elevation: 0,
                          onSelected: (valeu) {},
                          label: const Text("Games"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          elevation: 0,
                          onSelected: (valeu) {},
                          label: const Text("Programação"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          elevation: 0,
                          onSelected: (valeu) {},
                          label: const Text("Desenvolvimento Mobile"),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Recomendado",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Início",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: "Sgorts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Novo Vídeo",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play),
              label: "inscrições",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações",
            ),
          ],
        ));
  }
}
