import 'package:blog_fire/resource/dimens.dart';
import 'package:blog_fire/resource/string.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: 150,
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: kSP150x,
                height: kSP150x,
                color: Colors.red,
              ),
              Text("Thet Khine",style: TextStyle(fontSize: kFS18x,fontWeight: FontWeight.bold),),
              Text("Software Architect,daoiwndoaenod",maxLines: 3,overflow: TextOverflow.ellipsis,),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: kSP50x))
                ),
                onPressed: (){}, 
              child:const  Text(kFollow))
          
            ],
          ),
        ),
      ),
    );
  }
}