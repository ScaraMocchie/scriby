import 'package:flutter/material.dart';
import 'package:tobagen2/controllers/accountData.dart';

class SetTarget extends StatefulWidget {
  const SetTarget({super.key});

  @override
  State<SetTarget> createState() => _SetTargetState();
}

class _SetTargetState extends State<SetTarget> {

  @override
  Widget build(BuildContext context) {
      String selected = (AccountData.weeklyTarget==10)?"Easy : 10 audio":(AccountData.weeklyTarget==20)?"Medium : 20 audio":"Hard  : 40 audio";
    return DropdownButton<String>(

        value: selected,
        onChanged: (value){
          setState(() {
            selected = value!;
            AccountData.weeklyTarget = 
            (value=="Easy : 10 audio")?10:(value=="Medium : 20 audio")?20:40;
          });
        },
        underline: SizedBox(),
        iconEnabledColor: Colors.white,
        dropdownColor: Color(0xff527ee7),
        borderRadius: BorderRadius.circular(5),
        items: ["Easy : 10 audio", "Medium : 20 audio", "Hard  : 40 audio"]
        .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
          child: Text(e, style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 15, ),),
          value: e,
          )).toList(),
     
    );
  }
}