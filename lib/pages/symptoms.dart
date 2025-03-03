import 'package:flutter/material.dart';


class Symptoms extends StatefulWidget {
  final String symptom;
  Symptoms({Key? key, required this.symptom}) : super(key: key);

  @override
  State<Symptoms> createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
  var selected = false;
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
    child: GestureDetector(
      onTap: (){
        setState(() {

        selected = !selected;
        print(selected);

        });
      },
      child: Container(
        decoration: const BoxDecoration(
        color: Color.fromARGB(233, 245, 245, 245),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.symptom, style: const TextStyle(fontFamily: 'SFProM', fontSize: 18, color: Color.fromARGB(255, 55, 55, 55)),),
                  ],
                ),
            ],
          ),
        ),
    
      ),
    ),
  );

  }
}