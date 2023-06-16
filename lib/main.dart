import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: [
              const Text(
                'Hello Ibrahim!',
                style: TextStyle(
                  color: Color.fromARGB(255, 253, 20, 3),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Watch Your favourite movies here',
                style: TextStyle(fontSize: 20),
              ),
              const CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              Center(
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      fillColor: Colors.black38,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.red,
                        size: 24,
                      ),
                      suffixIcon: const Icon(
                        Icons.mic,
                        color: Colors.red,
                        size: 24,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Text(
                "Most Watched Movies",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              Stack(
                children: [
                  Center(child: Image.asset('assets/pb.jpg')),
                ],
              ),
              Text("Popular Movies",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: new AssetImage("assets/gf1.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: new AssetImage("assets/gf2.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: new AssetImage("assets/gf3.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: new AssetImage("assets/im.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: new AssetImage("assets/lg.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heat_pump_rounded),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
