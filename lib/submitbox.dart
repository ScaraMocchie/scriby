import 'package:flutter/material.dart';
import 'package:regislogindash/staticdata.dart';

class SubmitBox extends StatefulWidget {
  const SubmitBox({super.key});

  @override
  State<SubmitBox> createState() => _SubmitBoxState();
}

class _SubmitBoxState extends State<SubmitBox> {
  final textController = TextEditingController();
  String statuss = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(statuss, style: const TextStyle(color: Colors.black),),
        TextFormField(
          controller: textController,
          minLines: 3,
          maxLines: 5,
          decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.purple)
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.purple)
            ),
            hintText: "Type something...",
            ),
        ),
        const SizedBox(height: 20,),
        InkWell(
          onTap: () async{
            String statuss1 = await RegisData.fernetBasic(textController.text);
            setState(() {
              statuss = statuss1;
            });
          },
          child: Container(
            alignment: Alignment.center,
            width: 370,
            height: 45,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 196, 96, 214),
                    Colors.purple,
                    const Color.fromARGB(255, 124, 22, 142),
              ]),
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Text("SUBMIT", style: TextStyle(color: Colors.white),),
          ),
        )
      ],
    );
  }
}