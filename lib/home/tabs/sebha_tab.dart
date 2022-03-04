import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasbeh = ['سبحان الله', 'الحمد لله', 'الله أكبر'];

  int index = 0;

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // children: [
        //   Center(child: InkWell(
        //     onTap: (){
        //       if(i<30){
        //         i++;
        //       }
        //
        //       setState(() {
        //
        //       });
        //     },
        //       child: Image.asset('assets/images/head_sebha.png',width: 140,height: 230,))),
        //   Text('عدد التسبيحات',style: Theme.of(context).textTheme.headline1,),
        //   Container(
        //     height: 81,
        //     width: 69,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(25)),
        //       color: Color.fromARGB(255, 190, 164, 127),
        //     ),
        //     child: Center(child: Text('$i',style: Theme.of(context).textTheme.headline1,)),
        //   ),
        //   SizedBox(height: 8,),
        //   Container(
        //     height: 51,
        //     width: 137,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(25)),
        //       color: Color.fromARGB(255, 183, 147, 95),
        //     ),
        //     child: Center(child: Text(
        //       tasbeh[index],style: TextStyle(
        //       color: Colors.white70,
        //       fontSize: 24,
        //     ),
        //     textAlign: TextAlign.center,)),
        //   ),
        //
        // ],
        );
  }
}
