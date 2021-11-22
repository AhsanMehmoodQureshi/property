import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key key}) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height : MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/mobile.png'),fit: BoxFit.fill),
          ),
          child: Center(
            child: Card(
              elevation: 10,
              color: Colors.white,
              child: Container(
                padding: const EdgeInsets.all(15),
                width: 300,
                height: 450,
                alignment: Alignment.center,
                child: Column(
                  children:  [
                    const SizedBox(height: 20,),
                    const Text('Password Recovery',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                    const SizedBox(height: 20,),
                    const Text('Enter the email associated with you account and we,ll send you and email with instructions to reset your password.'),
                    const SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(0),
                      child: TextField(
                        controller: nameController,
                        decoration:  const InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.attach_email)
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(0),
                      width: double.infinity,
                      color: Colors.blue,
                      child: ElevatedButton.icon(onPressed: (){},
                          label: const Text('SEND EMAIL '),icon: const Icon(Icons.double_arrow_sharp)),
                    ),
                    const SizedBox(height: 20,),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, '/login');
                    }, child: const Text('back')),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
