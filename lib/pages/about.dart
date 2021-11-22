import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
             child: Column(
               children: [
                 Stack(
                   children: [
                     Container(
                       padding: const EdgeInsets.all(0),
                       child: const ClipRRect(
                         borderRadius: BorderRadius.only(
                             bottomLeft: Radius.circular(15),
                             bottomRight: Radius.circular(15)
                         ),
                         child: Image(
                           image: AssetImage('assets/home/flat8.png'),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     Positioned(
                         top: 10,
                         left: 15,
                         child: IconButton(onPressed: (){
                           Navigator.pushNamed(context, '/bottom_bar');
                         },icon:const Icon(Icons.arrow_back,size: 35,color: Colors.white,))),
                     Positioned(
                         top: 50,
                         left: 25,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: const [
                             Text('Real Estate Company',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                             Text('Best Company to Rent or Buy a property',style: TextStyle(fontSize: 20,color: Colors.white),)
                           ],
                         )),
                     Positioned(
                         bottom: 15,
                         left: 35,
                         child: Row(
                           children: const [
                             Icon(Icons.facebook,color: Colors.white,),
                             SizedBox(width: 20,),
                             Icon(Icons.camera_alt,color: Colors.white,),
                             SizedBox(width: 20,),
                             Icon(Icons.facebook,color: Colors.white,),
                           ],
                         ))
                   ],
                 ),
                 const ListTile(
                   leading: Icon(Icons.apartment_sharp,color: Colors.black,),
                   title: Text('About us',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
                 ),
                 const Text('Designed for Chinese readers of intermediate to advanced levels to further improve their language proficiency, Business Chinese for Success incorporates case studies of real companies doing business in China as its teaching materials. Companies include such big multinational corporations as Starbucks, Wal-Mart, and Lenovo. The book succeeds in putting the language instruction in a context that is relevant to most people learning to speak Chinese today that is in a business environment. Readers will be able to learn contemporary vocabulary that is actually in use in China today. Text materials are in both simplified and traditional Chinese, with pinyin and English translations included as appendix at the end of the book.'),
                 const ListTile(
                   leading: Icon(Icons.location_on,color: Colors.black,),
                   title: Text('Address',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
                 ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Expanded(child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: const [
                         Text('Street',style: TextStyle(fontWeight: FontWeight.bold),),
                         Text('77 Crown \n'),
                         Text('City',style: TextStyle(fontWeight: FontWeight.bold)),
                         Text('London'),
                         Text('Country\n',style: TextStyle(fontWeight: FontWeight.bold)),
                         Text('UK'),
                         Text('Zip Code\n',style: TextStyle(fontWeight: FontWeight.bold)),
                         Text('44000'),
                       ],
                     )),
                     Expanded(child: Column(
                       children: [
                         Image.asset('assets/agent/map.png')
                       ],
                     ))
                   ],
                 )
               ],
             ),
          ),
          ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.phone),backgroundColor: Colors.blueAccent,),
    );
  }
}
