import 'package:flutter/material.dart';
import 'package:regislogindash/dash.dart';
import 'package:regislogindash/staticdata.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final passwordController = TextEditingController();
  String passStatus="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 210, 255),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset("assets/undraw_welcoming_re_x0qo.svg",
            width: 200,),
            const Text("Welcome Back!", style: TextStyle(fontSize: 25, letterSpacing: 4,),),
            const SizedBox(height: 60,),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                label: Text("Password"),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
             borderSide: BorderSide(
              width: 0, 
              style: BorderStyle.none,
              ),
             ),
                filled: true,
                fillColor: Color.fromARGB(255, 254, 249, 255),),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(passStatus, style: TextStyle(color: Colors.red, fontSize: 12),)),
            const SizedBox(height: 40,),
            Container(
              alignment: Alignment.bottomCenter,
              child: InkWell(
              onTap: () async{
                await RegisData.getIdLocal();
                await RegisData.getPubKey();
                await RegisData.getName();
                if(await RegisData.login(passwordController.text, RegisData.deviceId!, RegisData.deviceId!+RegisData.name!)==200){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Dashboard();}));
                } else{
                  setState(() {
                  passStatus = "incorrect password";
                  });return;
                }
                
   },
              child: Container(
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 196, 96, 214),
                    Colors.purple,
                    const Color.fromARGB(255, 124, 22, 142),
                  ]),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            )

          ],
        )),
      ),
    );
  }
}