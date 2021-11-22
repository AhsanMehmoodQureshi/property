import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nameControllers = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordControllers = TextEditingController();
  bool _obscureText = true;
  bool _obscuresText = true;
  final _formKey = GlobalKey<FormState>();
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
                height : 550,
                alignment: Alignment.center,
                child: Column(
                  children:  [
                    const SizedBox(height: 20,),
                    const Text('Real Estate APP',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                   Form(
                       key: _formKey,
                       child: Column(
                       children: [
                       Container(
                         width: double.infinity,
                         padding: const EdgeInsets.all(0),
                         child: TextFormField(
                           controller: nameController,
                           decoration:  const InputDecoration(
                               labelText: 'User Name',
                               suffixIcon: Icon(Icons.person)
                           ),
                           validator: (value){
                             if(value==null || value.isEmpty){
                               return 'Please enter a valid user name';
                             }
                             return null;
                           },
                         ),
                       ),
                       Container(
                         width: double.infinity,
                         padding: const EdgeInsets.all(0),
                         child: TextFormField(
                           controller: nameControllers,
                           decoration:  const InputDecoration(
                               labelText: 'Email',
                               suffixIcon: Icon(Icons.attach_email)
                           ),
                           validator: (value){
                             if(value==null || value.isEmpty){
                               return 'Please enter a valid email';
                             }
                             return null;
                           },
                         ),
                       ),
                       Container(
                         width: double.infinity,
                         padding: const EdgeInsets.all(0),
                         child: TextFormField(
                           obscureText: _obscureText,
                           controller: passwordController,
                           decoration:   InputDecoration(
                             labelText: 'Password',
                             suffixIcon:  GestureDetector(
                               onTap: () {
                                 setState(() {
                                   _obscureText = !_obscureText;
                                 });
                               },
                               child:
                               Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                             ),
                           ),
                           validator: (value){
                             if(value==null || value.isEmpty){
                               return 'Please enter a valid password';
                             }
                             if(value.length<6){
                               return 'Minimum 6 characters';
                             }
                             return null;
                           },
                         ),
                       ),
                       Container(
                         width: double.infinity,
                         padding: const EdgeInsets.all(0),
                         child: TextFormField(
                           obscureText: _obscuresText,
                           controller: passwordControllers,
                           decoration:   InputDecoration(
                             labelText: 'Confirm Password',
                             suffixIcon:  GestureDetector(
                               onTap: () {
                                 setState(() {
                                   _obscuresText = !_obscuresText;
                                 });
                               },
                               child:
                               Icon(_obscuresText ? Icons.visibility : Icons.visibility_off),
                             ),
                           ),
                           validator: (value){
                             if(value==null || value.isEmpty){
                               return 'Please enter a valid password';
                             }
                             if(value.length<6){
                               return 'Password do not match';
                             }
                             return null;
                           },
                         ),
                       ),
                     ],
                   )),
                    Container(
                      padding: const EdgeInsets.all(0),
                      width: double.infinity,
                      color: Colors.blue,
                      child: ElevatedButton.icon(onPressed: (){
                        if (_formKey.currentState.validate())
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Signing Successfully',textAlign: TextAlign.center,)),
                          );
                        }
                      },
                          label: const Text('SIGNUP'),icon: const Icon(Icons.double_arrow_sharp)),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(0),
                      child: TextButton(onPressed: (){
                        Navigator.pushNamed(context, '/login');
                      }, child: const Text('LOGIN',style: TextStyle(color: Colors.black),)),
                    )
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
