import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

/*
Container(
        height: 60,
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: [
                Icon(
                  Icons.close,
                ),
                Text('close'),
              ],
            ),
          ),
        ),
      ),
*/