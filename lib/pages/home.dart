import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        actions: [
          Container(
            //height: 50,
            width: 35,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/mobile.png'),fit: BoxFit.fill)
            ),
          )
        ],
      ),
     drawer: const Navbar(),
     body: SafeArea(child: Container(
       margin: const EdgeInsets.all(15),
       child: ListView(
         children:  [
           const Text('Real Estate App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
           const SizedBox(height: 20,),
           Row(
             children: [
               Expanded(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                   Text('Popular Properties'),
                 ],
               )),
               Expanded(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children:  [
                   TextButton(onPressed: (){
                     Navigator.pushNamed(context, '/explore');
                   }, child: const Text('See All',textAlign: TextAlign.end,))
                 ],
               ))
             ],
           ),
           const SizedBox(height: 20,),
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Expanded(child: Card(
                 elevation: 10,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Stack(
                       children: [
                         const Image(image: AssetImage('assets/home/flat4.png')),
                         Positioned(
                             top: 5,
                             right: 5,
                             child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('paris'),style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 )
                             ),)),
                         Positioned(
                             bottom: 5,
                             left: 5,
                             child: ElevatedButton(onPressed: (){}, child: const Text('Rent'),style: ElevatedButton.styleFrom(
                               primary: Colors.greenAccent,
                             ),)),
                         const Positioned(
                           bottom: 5,
                           right: 15,
                           child: Icon(Icons.location_on,color: Colors.blue,),)
                       ],
                     ),
                     const Text('87 rue National\n',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                     const Text('USD 450/ month\n'),
                     Row(
                       children: const [
                         Icon(Icons.apartment),
                         Text('Apartment-'),
                         Text('450sqft')
                       ],
                     )
                   ],
                 ),
               )),
               Expanded(child: Card(
                 elevation: 10,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Stack(
                       children: [
                         const Image(image: AssetImage('assets/home/flat4.png')),
                         Positioned(
                             top: 5,
                             right: 5,
                             child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('paris'),style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 )
                             ),)),
                         Positioned(
                             bottom: 5,
                             left: 5,
                             child: ElevatedButton(onPressed: (){}, child: const Text('Rent'),style: ElevatedButton.styleFrom(
                               primary: Colors.greenAccent,
                             ),)),
                         const Positioned(
                           bottom: 5,
                           right: 15,
                           child: Icon(Icons.location_on,color: Colors.blue,),)
                       ],
                     ),
                     const Text('87 rue National\n',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                     const Text('USD 450/ month\n'),
                     Row(
                       children: const [
                         Icon(Icons.apartment),
                         Text('Apartment-'),
                         Text('450sqft')
                       ],
                     )
                   ],
                 ),
               )),
             ],
           ),
           const SizedBox(height: 20,),
           Row(
             children: [
               Expanded(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                   Text('Popular Location'),
                 ],
               )),
               Expanded(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children:  [
                   TextButton(onPressed: (){
                     Navigator.pushNamed(context, '/properties');
                   }, child: const Text('See All',textAlign: TextAlign.end,))
                 ],
               ))
             ],
           ),
           const SizedBox(height: 20,),
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Expanded(child: Card(
                 elevation: 10,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Stack(
                       children: [
                         const Image(image: AssetImage('assets/home/house.png'),),
                         Positioned(
                             top: 5,
                             right: 5,
                             child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('paris'),style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 )
                             ),)
                         ),
                       ],
                     ),
                   ],
                 ),
               )),
               const SizedBox(width: 15,),
               Expanded(child: Card(
                 elevation: 10,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Stack(
                       children: [
                         const Image(image: AssetImage('assets/home/house.png'),),
                         Positioned(
                             top: 5,
                             right: 5,
                             child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('Dubai'),style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 )
                             ),)
                         ),
                       ],
                     ),
                   ],
                 ),
               )),
               const SizedBox(width: 15,),
               Expanded(child: Card(
                 elevation: 10,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Stack(
                       children: [
                         const Image(image: AssetImage('assets/home/house.png'),),
                         Positioned(
                             top: 5,
                             right: 5,
                             child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.location_on), label: const Text('USA'),style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 )
                             ),)
                         ),
                       ],
                     ),
                   ],
                 ),
               )),
             ],
           ),
           const SizedBox(height: 20,),
           Row(
             children: [
               Expanded(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                   Text('Popular Agents'),
                 ],
               )),
               Expanded(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children:  [
                   TextButton(onPressed: (){}, child: const Text('See All',textAlign: TextAlign.end,))
                 ],
               ))
             ],
           ),
           const SizedBox(height: 20,),
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Expanded(child: Card(
                 elevation: 10,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Stack(
                       children: [
                         const Image(image: AssetImage('assets/home/agents.png'),),
                         Positioned(
                             top: 5,
                             right: 5,
                             child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.person), label: const Text('Ellen'),style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 )
                             ),)
                         ),
                       ],
                     ),
                   ],
                 ),
               )),
               const SizedBox(width: 15,),
               Expanded(child: Card(
                 elevation: 10,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Stack(
                       children: [
                         const Image(image: AssetImage('assets/home/agent1.png'),),
                         Positioned(
                             top: 5,
                             right: 5,
                             child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.person), label: const Text('Brendan'),style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 )
                             ),)
                         ),
                       ],
                     ),
                   ],
                 ),
               )),
               const SizedBox(width: 15,),
               Expanded(child: Card(
                 elevation: 10,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Stack(
                       children: [
                         const Image(image: AssetImage('assets/home/agent2.png'),),
                         Positioned(
                             top: 5,
                             right: 5,
                             child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.person), label: const Text('Jennifer'),style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 )
                             ),)
                         ),
                       ],
                     ),
                   ],
                 ),
               )),
             ],
           ),
         ],
       ),
     ),),
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({Key key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  @override
  Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const  UserAccountsDrawerHeader(
              accountName: Text('Real Estate App'),
              accountEmail: Text('realestate@gmail.com'),
              otherAccountsPictures: [
                Icon(Icons.settings,color: Colors.white,)
              ],
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/home/flat2.png'),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/bottom_bar');
              },
              leading: const Icon(Icons.home,color: Colors.blue,),
              title: const Text(
                "Home",
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/explore');
              },
              leading: const Icon(Icons.explore,color: Colors.blue,),
              title: const Text(
                "Explore",
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/properties');
              },
              leading: const Icon(Icons.apartment_sharp,color: Colors.blue,),
              title: const Text(
                "Properties",
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/dealer');
              },
              leading: const Icon(Icons.person,color: Colors.blue,),
              title: const Text(
                "Agents",
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/faq');
              },
              leading: const Icon(Icons.question_answer,color: Colors.blue,),
              title: const Text(
                "F.Q.S",
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/about');
              },
              leading: const Icon(Icons.notification_important,color: Colors.blue,),
              title: const Text(
                "About Us",
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/login');
              },
              leading: const Icon(Icons.logout,color: Colors.blue,),
              title: const Text(
                "Logout",
              ),
            ),
          ],
        ),
      );

  }
}
