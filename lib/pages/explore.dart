import 'package:flutter/material.dart';
import 'home.dart';

class Explore extends StatefulWidget {
  const Explore({Key key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Explore',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          Container(
            width: 35,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/mobile.png'),fit: BoxFit.fill)
            ),
          ),
        ],
      ),
      drawer: const Navbar(),
      body: SafeArea(
        child: ListView(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/explore1');
                },
                child: Stack(
                  children:  [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const Image(
                          image: AssetImage('assets/home/flat1.png'),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('45'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                        )
                    ),
                    Positioned(
                        bottom: 10,
                        left: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('APARTMENT'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.cyanAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/explore1');
                },
                child:  Stack(
                  children:  [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const Image(
                          image: AssetImage('assets/home/house1.png'),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.home), label: const Text('121'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                        )
                    ),
                    Positioned(
                        bottom: 10,
                        left: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.home), label: const Text('HOUSE'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.cyanAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/explore1');
                },
                child:  Stack(
                  children:  [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const Image(
                          image: AssetImage('assets/home/flat8.png'),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('86'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                        )
                    ),
                    Positioned(
                        bottom: 10,
                        left: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('APARTMENT'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.cyanAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/explore1');
                },
                child:  Stack(
                  children:  [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: const Image(
                          image: AssetImage('assets/home/house3.png'),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.house), label: const Text('122'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                        )
                    ),
                    Positioned(
                        bottom: 10,
                        left: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('HOUSE'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.cyanAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
