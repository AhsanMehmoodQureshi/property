import 'package:flutter/material.dart';

import 'home.dart';

class Properties extends StatefulWidget {
  const Properties({Key key}) : super(key: key);

  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Properties',style: TextStyle(color: Colors.black),),
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
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Column(
                  children:  [
                    Row(
                      children: const [
                        Icon(Icons.calendar_today),
                        Text('2010')
                      ],
                    )
                  ],
                )),
                Expanded(child: Column(
                  children:  [
                    Row(
                      children: const [
                        Icon(Icons.apartment_sharp),
                        Text('450ft')
                      ],
                    )
                  ],
                )),
                Expanded(child: Column(
                  children:  [
                    Row(
                      children: const [
                        Icon(Icons.emoji_flags),
                        Text('5')
                      ],
                    )
                  ],
                )),
                Expanded(child: Column(
                  children:  [
                    Row(
                      children: const [
                        Icon(Icons.directions_boat),
                        Text('5')
                      ],
                    )
                  ],
                )),
                Expanded(child: Column(
                  children:  [
                    Row(
                      children: const [
                        Icon(Icons.vpn_key),
                        Text('4')
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children:  [
                  ListTile(
                    title: const Text('Rosa Residency',style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('Apartment'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black
                      ),),
                  ),
                  Stack(
                    children:  [
                      Container(
                        margin: const EdgeInsets.all(5),
                        child:  ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/home/flat1.png'),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 20,
                          child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('london'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))
                            ),
                          )
                      ),
                      Positioned(
                          top: 10,
                          left: 20,
                          child: ElevatedButton(onPressed: (){}, child: const Text('USD 370/month'),
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
                          child: ElevatedButton(onPressed: (){},  child: const Text('RENT'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.cyanAccent,
                            ),
                          )
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.calendar_today),
                              Text('2010')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.apartment_sharp),
                              Text('450ft')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.emoji_flags),
                              Text('5')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.directions_boat),
                              Text('5')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.vpn_key),
                              Text('4')
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children:  [
                  ListTile(
                    title: const Text('Fall Residency',style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('Apartment'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black
                      ),),
                  ),
                  Stack(
                    children:  [
                      Container(
                        margin: const EdgeInsets.all(5),
                        child:  ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/home/flat2.png'),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 20,
                          child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('Paris'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))
                            ),
                          )
                      ),
                      Positioned(
                          top: 10,
                          left: 20,
                          child: ElevatedButton(onPressed: (){}, child: const Text('USD 252/month'),
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
                          child: ElevatedButton(onPressed: (){},  child: const Text('RENT'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyanAccent,
                            ),
                          )
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.calendar_today),
                              Text('2010')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.apartment_sharp),
                              Text('450ft')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.emoji_flags),
                              Text('5')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.directions_boat),
                              Text('5')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.vpn_key),
                              Text('4')
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children:  [
                  ListTile(
                    title: const Text('Anayat Residency',style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('Apartment'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black
                      ),),
                  ),
                  Stack(
                    children:  [
                      Container(
                        margin: const EdgeInsets.all(5),
                        child:  ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/home/flat6.png'),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 20,
                          child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('Dubai'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))
                            ),
                          )
                      ),
                      Positioned(
                          top: 10,
                          left: 20,
                          child: ElevatedButton(onPressed: (){}, child: const Text('USD 565/month'),
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
                          child: ElevatedButton(onPressed: (){},  child: const Text('RENT'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyanAccent,
                            ),
                          )
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.calendar_today),
                              Text('2010')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.apartment_sharp),
                              Text('450ft')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.emoji_flags),
                              Text('5')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.directions_boat),
                              Text('5')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.vpn_key),
                              Text('4')
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children:  [
                  ListTile(
                    title: const Text('Gulberg Residency',style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.apartment_sharp), label: const Text('Apartment'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black
                      ),),
                  ),
                  Stack(
                    children:  [
                      Container(
                        margin: const EdgeInsets.all(5),
                        child:  ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/home/flat4.png'),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 20,
                          child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('Italy'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))
                            ),
                          )
                      ),
                      Positioned(
                          top: 10,
                          left: 20,
                          child: ElevatedButton(onPressed: (){}, child: const Text('USD 450/month'),
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
                          child: ElevatedButton(onPressed: (){},  child: const Text('RENT'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyanAccent,
                            ),
                          )
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.calendar_today),
                              Text('2010')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.apartment_sharp),
                              Text('450ft')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.emoji_flags),
                              Text('5')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.directions_boat),
                              Text('5')
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.vpn_key),
                              Text('4')
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
