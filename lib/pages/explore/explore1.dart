import 'package:flutter/material.dart';

class Explore1 extends StatefulWidget {
  const Explore1({Key key}) : super(key: key);

  @override
  _Explore1State createState() => _Explore1State();
}

class _Explore1State extends State<Explore1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset('assets/home/flat1.png'),
                Positioned(
                  top: 15,
                    left: 15,
                    child: IconButton(onPressed: (){
                      Navigator.pushNamed(context, '/explore');
                    },icon: const Icon(Icons.arrow_back_outlined,size: 30,color: Colors.white,),)),
                Positioned(
                  top: 200,
                  right: 0,
                  left: 0,
                    child: Container(
                      height: 800,
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Gold Apartment',style: TextStyle(fontWeight: FontWeight.bold),),
                          const SizedBox(height: 20,),
                          Row(
                            children:  [
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('USD 450.00/month',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)
                                ],
                              )),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ElevatedButton(onPressed: (){}, child: const Text('RENT'))
                                ],
                              ))
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: const [
                              Icon(Icons.location_on),
                              Text(' Address',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Street',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('87 rue National\n'),
                                  Text('City',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('paris\n'),
                                  Text('Country',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('FR'),
                                ],
                              )),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:  [
                                  Image.asset('assets/agent/map.png',width: 150,),
                                ],
                              ))
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.apartment_sharp),
                              Text(' Details',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          const Text('Located in Thessaloniki, 601 m from Museum of the Macedonian Struggle and 801 m from Rotunda and Arch of Galerius, ZH Luxury Suites provides accommodations with free WiFi, air conditioning, a tennis court and a terrace.The units come with tiled floors and feature a fully equipped kitchen with a fridge, a dining area, a flat-screen TV, and a private bathroom with shower and a hairdryer. A stovetop and toaster are also provided, as well as a kettle and a coffee machine.'),
                          const SizedBox(height: 20,),
                          const Text('Located in Thessaloniki, 601 m from Museum of the Macedonian Struggle and 801 m from Rotunda and Arch of Galerius, ZH Luxury Suites provides accommodations with free WiFi, air conditioning, a tennis court and a terrace.The units come with tiled floors and feature a fully equipped kitchen with a fridge, a dining area, a flat-screen TV, and a private bathroom with shower and a hairdryer. A stovetop and toaster are also provided, as well as a kettle and a coffee machine.'),

                          Row(
                            children: const [
                              Icon(Icons.vpn_key_sharp),
                              Text(' Amenities',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
                Positioned(
                  top: 185,
                    left: 20,
                    child: ElevatedButton(onPressed: (){}, child: const Text('Apartment'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),)),
                Positioned(
                    top: 180,
                    right: 20,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Icon(
                        Icons.favorite,
                       // size: 50,
                      ),
                      onPressed: () {},
                    ),)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
