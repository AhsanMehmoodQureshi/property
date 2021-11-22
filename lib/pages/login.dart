import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
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
               height: 550,
               alignment: Alignment.center,
               child: Column(
                 children:  [
                   const SizedBox(height: 20,),
                   const Text('Real Estate APP',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                    Form(
                        key: _formKey,
                        child: Column(
                        children: <Widget>[
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                            controller: nameController,
                            decoration:  const InputDecoration(
                                labelText: 'Email',
                                suffixIcon: Icon(Icons.attach_email)
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(0),
                          child: TextFormField(
                            obscureText: _obscureText,
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a valid password';
                              }
                              return null;
                            },
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
                          ),
                        ),
                      ],
                    )),
                   const SizedBox(height: 20,),
                   Container(
                     padding: const EdgeInsets.all(0),
                     width: double.infinity,
                     color: Colors.blue,
                     child: ElevatedButton.icon(onPressed: (){
                       if (_formKey.currentState.validate())
                       {
                         ScaffoldMessenger.of(context).showSnackBar(
                           const SnackBar(content: Text('Your are Login ')),
                         );
                       }
                       Navigator.pushNamed(context, '/bottom_bar');
                     },
                          label: const Text('Login'),icon: const Icon(Icons.add_to_home_screen_outlined)),
                   ),
                   const SizedBox(height: 20,),
                   Container(
                     padding: const EdgeInsets.all(0),
                     child: TextButton(onPressed: (){
                       Navigator.pushNamed(context, '/forgot');
                     }, child: const Text('Forgot Your Password?')),
                   ),
                   const SizedBox(height: 20,),
                   Container(
                     padding: const EdgeInsets.all(0),
                     child: TextButton(onPressed: (){
                       Navigator.pushNamed(context, '/register');
                     }, child: const Text('SIGNUP',style: TextStyle(color: Colors.black),)),
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
