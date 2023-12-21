import 'package:flutter/material.dart';
import 'package:mvpcard/functions/increment_decrement.dart';
import 'package:mvpcard/functions/mesa_controller.dart';
import 'package:mvpcard/screens/total_mesas.dart';

class FazerUpload extends StatefulWidget {
  const FazerUpload({Key? key}) : super(key: key);

  @override
  _FazerUploadState createState() => _FazerUploadState();
}

class _FazerUploadState extends State<FazerUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 27),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 153),
            child: Text(
              "Cardápio",
              style: TextStyle(
                fontFamily: 'FigTree',
                fontWeight: FontWeight.w400,
                fontSize: 20,
                letterSpacing: 0.36,
                color: Color(0xff000000),
              ),
            ),
          ),
          SizedBox(height: 131,),

          Container(
            width: 342,
            height: 424,

            child: Stack(
              children: [
                Image.asset('assets/images/containerPon.png',
            fit: BoxFit.cover,),

            Positioned(
              top: 91,
              left: 121,
              child: Image.asset('assets/images/up.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,),
              
              ),

              Positioned(
              top: 212,
              left: 18,
              child: Image.asset('assets/images/bottom_upload.png',
              width: 306,
              height: 48,
              fit: BoxFit.cover,),
              
              ),
              ],
            ),

            
          ),


          SizedBox(height: 38,),


          Container(
            width: 342,
            height: 48,
            
            decoration: BoxDecoration(
              color: Color(0xffFFB063),
              borderRadius: BorderRadius.circular(10),
            ),
          

            child: TextButton(onPressed: () {},
          
             child: Text("Salvar",
             style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xff000000),
              fontSize: 15,

             ),),),
          ),

          SizedBox(height: 25,)
          
        ],
      ),

       bottomNavigationBar: BottomAppBar(
        height: 64,
        color: const Color(0xffF5F5F5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/images/bottom1.png'),
                fit: BoxFit.cover,
                width: 59,
                height: 49,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/images/bottom2.png'),
                fit: BoxFit.cover,
                width: 41,
                height: 49,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/images/bottom3.png'),
                fit: BoxFit.cover,
                width: 59,
                height: 49,
              ),
            ),
          ],
        ),
      ),
    );

    
  }
}
