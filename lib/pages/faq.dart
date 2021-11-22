import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  const Faq({Key key}) : super(key: key);

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(header: 'What the first step of the home buying home ',body: 'Located on a high floor in the Plaza District’s iconic 590 Madison Avenue, the New York City offices of Berkshire Hathaway HomeServices New York Properties services all of Manhattan’s vibrant neighborhoods and many of Brooklyn’s prime residential areas.'),
    ExpansionItem(header: 'What the first step of the home buying home ',body: 'Located on a high floor in the Plaza District’s iconic 590 Madison Avenue, the New York City offices of Berkshire Hathaway HomeServices New York Properties services all of Manhattan’s vibrant neighborhoods and many of Brooklyn’s prime residential areas.'),
    ExpansionItem(header: 'What the first step of the home buying home ',body: 'Located on a high floor in the Plaza District’s iconic 590 Madison Avenue, the New York City offices of Berkshire Hathaway HomeServices New York Properties services all of Manhattan’s vibrant neighborhoods and many of Brooklyn’s prime residential areas.'),
    ExpansionItem(header: 'What the first step of the home buying home ',body: 'Located on a high floor in the Plaza District’s iconic 590 Madison Avenue, the New York City offices of Berkshire Hathaway HomeServices New York Properties services all of Manhattan’s vibrant neighborhoods and many of Brooklyn’s prime residential areas.'),
    ExpansionItem(header: 'What the first step of the home buying home ',body: 'Located on a high floor in the Plaza District’s iconic 590 Madison Avenue, the New York City offices of Berkshire Hathaway HomeServices New York Properties services all of Manhattan’s vibrant neighborhoods and many of Brooklyn’s prime residential areas.'),
    ExpansionItem(header: 'What the first step of the home buying home ',body: 'Located on a high floor in the Plaza District’s iconic 590 Madison Avenue, the New York City offices of Berkshire Hathaway HomeServices New York Properties services all of Manhattan’s vibrant neighborhoods and many of Brooklyn’s prime residential areas.'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                 const Image(image: AssetImage('assets/home/flat1.png'),),
                Positioned(
                  top: 15,
                    left: 15,
                    child: ElevatedButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/bottom_bar');
                }, icon: const Icon(Icons.arrow_back), label: const Text('') ,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  primary: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
                ),)),
                const Positioned(
                  top: 25,
                    left: 80,
                    child: Text('F.A.Q',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),)),
                Positioned(
                  top: 80,
                  left: 0,
                  right: 0,
                  child:   Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child:const ListTile(
                      title:  TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Name LastName ...',
                          border:InputBorder.none
                        ),
                      ),
                    ),
                  ),),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded){
                      setState(() {
                        items[index].isExpanded = !items[index].isExpanded;
                      });
                    },
                    children: items.map((ExpansionItem item) {
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded){
                          return Container(
                            padding: const EdgeInsets.all(0),
                            child: Text(item.header),
                          );
                        },
                        isExpanded: item.isExpanded,
                        body: Container(
                          padding: const EdgeInsets.all(0),
                          child: Text(item.body),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExpansionItem{
  bool isExpanded;
  final String header;
  final String body;

  ExpansionItem({this.isExpanded  = false, this.header,this.body});
}
