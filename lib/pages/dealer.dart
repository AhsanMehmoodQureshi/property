import 'package:flutter/material.dart';

import 'home.dart';

class Dealer extends StatefulWidget {
  const Dealer({Key key}) : super(key: key);

  @override
  _DealerState createState() => _DealerState();
}

class _DealerState extends State<Dealer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Agents',style: TextStyle(color: Colors.black),),
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
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.all(10),
              child:ListTile(
                title:  TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    hintText: 'Search Name LastName ...',
                    border: const OutlineInputBorder(),
                  ),
                ),
                trailing:  const Icon(Icons.segment),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                children:  [
                  Expanded(flex:1,child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child:  const Image(
                          image: AssetImage('assets/agent/agent3.png'),
                          width: 90,
                          height :90,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  )),
                  Expanded(flex:2,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Ellen Grubert',style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.phone),
                            ),
                            TextSpan(
                                text: '698-156-23',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.mail),
                            ),
                            TextSpan(
                                text: 'ellengulbert@gmail.com',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/agent1');
                      }, child: const Text('Profile'))
                    ],
                  ),),
                  Expanded(flex:1,child: Column(
                    children: [
                      ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.star,color: Colors.amber,), label: const Text('4.5'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                            )

                        ),)
                    ],
                  )),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                children:  [
                  Expanded(flex:1,child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child:  const Image(
                          image: AssetImage('assets/agent/agent4.png'),
                          width: 90,
                          height :90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )),
                  Expanded(flex:2,child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Brendan Bardic',style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.phone),
                            ),
                            TextSpan(
                                text: '698-254-78',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.mail),
                            ),
                            TextSpan(
                                text: 'johndoe@gmail.com',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/agent2');
                      }, child: const Text('Profile'))
                    ],
                  ),),
                  Expanded(flex:1,child: Column(
                    children: [
                      ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.star,color: Colors.amber,), label: const Text('4.5'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                            )

                        ),)
                    ],
                  )),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                children:  [
                  Expanded(flex:1, child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child:  const Image(
                          image: AssetImage('assets/agent/agent5.png'),
                          width: 90,
                          height :90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),),
                  Expanded(flex:2,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Phil Gutowski',style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.phone),
                            ),
                            TextSpan(
                                text: '698-748-42',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.mail),
                            ),
                            TextSpan(
                                text: 'philgut@gmail.com',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/agent3');
                      }, child: const Text('Profile'))
                    ],
                  ),),
                  Expanded(flex:1,child: Column(
                    children: [
                      ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.star,color: Colors.amber,), label: const Text('4.5'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                            )

                        ),)
                    ],
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                children:  [
                  Expanded(flex:1,child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child:  const Image(
                          image: AssetImage('assets/agent/agent6.png'),
                          width: 90,
                          height :90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )),
                  Expanded(flex:2,child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Jennifer Grandjean',style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.phone),
                            ),
                            TextSpan(
                                text: '552-254-78',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.mail),
                            ),
                            TextSpan(
                                text: 'grandjean@gmail.com',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/agent4');
                      }, child: const Text('Profile'))
                    ],
                  ),),
                  Expanded(flex:1,child:Column(
                    children: [
                      ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.star,color: Colors.amber,), label: const Text('4.5'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                            )

                        ),)
                    ],
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                children:  [
                  Expanded(flex:1,child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child:  const Image(
                          image: AssetImage('assets/agent/agent7.png'),
                          width: 90,
                          height :90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )),
                  Expanded(flex:2,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('California',style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.phone),
                            ),
                            TextSpan(
                                text: '552-254-78',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.mail),
                            ),
                            TextSpan(
                                text: 'california@gmail.com',style: TextStyle(color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/agent5');
                      }, child: const Text('Profile'))
                    ],
                  ),),
                  Expanded(flex:1,child: Column(
                    children: [
                      ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.star,color: Colors.amber,), label: const Text('4.5'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                            )

                        ),)
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

