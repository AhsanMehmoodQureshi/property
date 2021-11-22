import 'package:flutter/material.dart';

class Agent4 extends StatefulWidget {
  const Agent4({Key key}) : super(key: key);

  @override
  _Agent4State createState() => _Agent4State();
}

class _Agent4State extends State<Agent4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      child: Image.asset('assets/agent/agent6.png'),
                    ),
                    Positioned(
                        top: 20,
                        left: 20,
                        child: IconButton(onPressed: (){
                          Navigator.pushNamed(context, '/dealer');
                        }, icon: const Icon(Icons.arrow_back_outlined,size: 30,color: Colors.blueAccent,))),
                    Positioned(
                        top: 20,
                        right: 20,
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.star,size: 30,color: Colors.blueAccent,))),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.star,color: Colors.amber,), label: const Text('4.5'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)
                              )

                          ),)
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    const SizedBox(width: 15,),
                    Expanded(child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Jennifer Grandjean',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),),
                    Expanded(child:  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.facebook,color: Colors.blueAccent,),
                        SizedBox(width: 15,),
                        Icon(Icons.camera_alt,color: Colors.brown,),
                        SizedBox(width: 15,),
                        Icon(Icons.phone,color: Colors.green,)
                      ],
                    ),),
                    const SizedBox(width: 15,),
                  ],
                ),
                const SizedBox(height: 15,),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text('552-254-78'),
                  trailing: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.person), label: const Text('')),
                ),
                const SizedBox(height: 15,),
                ListTile(
                  leading: const Icon(Icons.mail),
                  title: const Text('grandjean@gmail.com'),
                  trailing: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.mail), label: const Text('')),
                ),
                const ListTile(
                  title: Text('About Us',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                const ListTile(
                  title: Text('Let me take this opportunity to introduce our company, which is now one of the largest real estate companies in the Kingdom. Since more than four decades we started our business, and it was a humble beginning. But with the profound insight of Sheikh Mohammad Al Habib who saw that there is a real estate dealer, who buys and sells seeking profit only, and there is the developer who invests, plan & prepare the infrastructure and come up with a fully integrated project with all the required facilities, Thus the developer serves the society, gain profit, helps national economy and contributes to the comprehensive development of our beloved country.'),
                ),
              ],
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.phone,),backgroundColor: Colors.blueAccent,),
    );
  }
}
