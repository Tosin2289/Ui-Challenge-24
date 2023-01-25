import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: SizedBox(
        height: 220,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: screens.length,
            itemBuilder: ((context, index) {
              return Card(
                child: Container(
                  height: 220,
                  width: 160,
                  child: Column(
                    children: [
                      Image.asset(
                        screens[index].image,
                        height: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              screens[index].name,
                              style: TextStyle(fontSize: 21),
                            ),
                            Text(
                              'Pure Water',
                              style: TextStyle(
                                  fontSize: 19, color: Colors.grey[300]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              screens[index].prize,
                              style:
                                  TextStyle(color: Colors.green, fontSize: 18),
                            ),
                            Text(
                              screens[index].weight,
                              style: TextStyle(
                                  color: Colors.grey[300], fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })),
      ),
    )));
  }
}

class BoxModel {
  final image;
  final String name;
  final String prize;
  final String weight;
  BoxModel(
      {required this.image,
      required this.name,
      required this.prize,
      required this.weight});
}

List<BoxModel> screens = [
  BoxModel(
      image: 'assets/avacado.png',
      name: 'Avacado',
      prize: '\$21.9',
      weight: '200g'),
  BoxModel(
      image: 'assets/rash.png',
      name: 'Raspberry',
      prize: '\$32.9',
      weight: '200g'),
  BoxModel(
      image: 'assets/lemon.png', name: 'Lemon', prize: '\$18.8', weight: '1kg'),
  BoxModel(
      image: 'assets/apples.png',
      name: 'Apple',
      prize: '\$50.9',
      weight: '1kg'),
  BoxModel(
      image: 'assets/pomo.png',
      name: 'Pomegranate',
      prize: '\$67.4',
      weight: '1kg'),
];
