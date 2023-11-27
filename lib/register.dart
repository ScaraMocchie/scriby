import 'package:flutter/material.dart';
import 'package:regislogindash/dash.dart';
import 'package:regislogindash/login.dart';
import 'package:regislogindash/staticdata.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class Regist extends StatefulWidget {
  const Regist({super.key});

  @override
  State<Regist> createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    print(RegisData.first);
    RegisData.pubKey ??= "smntr";
    RegisData.deviceId ??= "none";
    RegisData.savePref();
    RegisData.getFirst().whenComplete(() async {
      if (RegisData.first == false) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const Login();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 210, 255),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "assets/undraw_launching_re_tomg.svg",
                width: 200,
              ),
              SizedBox(height: 25,),
              const Text(
                "Get Started",
                style: TextStyle(fontSize: 25, letterSpacing: 4),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
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
                    fillColor: Color.fromARGB(255, 254, 249, 255),
                    label: Text("Name")),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
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
                    fillColor: Color.fromARGB(255, 254, 249, 255),
                    label: Text("Password")),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: InkWell(
                  onTap: () async {
                    RegisData.name = usernameController.text;
                    RegisData.password = passwordController.text;
                    RegisData.deviceId = await RegisData.getId();
                    RegisData.first = false;
                    RegisData.register(RegisData.name!, RegisData.password!,
                        RegisData.deviceId!);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return Dashboard();
                    }));
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
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
