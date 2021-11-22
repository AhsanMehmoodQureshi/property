import 'package:flutter/material.dart';

class Estate extends StatefulWidget {
  const Estate({Key key}) : super(key: key);

  @override
  _EstateState createState() => _EstateState();
}

class _EstateState extends State<Estate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: ListView(
          children:  [
            Column(
              children:  [
                const SizedBox(height: 50,),
                const Text('REAL ESTATE APP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                const SizedBox(height: 50,),
                const Image(image: AssetImage('assets/carousel.png')),
                const SizedBox(height: 50,),
                const Text('Rent or Sale a Property',style: TextStyle(color: Colors.white,fontSize: 15),),
                const SizedBox(height: 150,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: const Text('Skip',style: TextStyle(color: Colors.white))),
                      ],
                    )),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, '/property');
                        }, child: const Text('Next',style: TextStyle(color: Colors.white),)),
                      ],
                    ))
                  ],
                ),
                const SizedBox(height: 20,),

              ],
            )
          ],
        ),
      ),
    );
  }
}
