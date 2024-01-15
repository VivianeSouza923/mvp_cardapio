import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FazerUpload extends StatefulWidget {
  const FazerUpload({Key? key}) : super(key: key);

  @override
  _FazerUploadState createState() => _FazerUploadState();
}

class _FazerUploadState extends State<FazerUpload> {
  bool isPdfUploaded = false; // Adicionado para rastrear o status do upload

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 27),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 153),
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
          const SizedBox(height: 131,),
          
          Container(
            width: 342,
            height: 424,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/containerPon.png',
                  fit: BoxFit.cover,
                ),

                Positioned(
                  top: 91,
                  left: 121,
                  child: Image.asset(
                    'assets/images/up.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),

                // Adicionado um ícone para indicar o upload do PDF
                if (isPdfUploaded)
                  Positioned(
                    top: 50,
                    left: 130,
                    child: Icon(
                      Icons.picture_as_pdf,
                      size: 40,
                      color: Colors.green,
                    ),
                  ),

                Positioned(
                  top: 212,
                  left: 18,
                  child: InkWell(
                    onTap: () async {
                      FilePickerResult? result = await FilePicker.platform.pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ['pdf'],
                      );

                      if (result != null && result.files.isNotEmpty) {
                        setState(() {
                          isPdfUploaded = true; // Atualiza o status do upload
                        });
                        // Restante do seu código...
                      }
                    },
                    child: Image.asset(
                      'assets/images/bottom_upload.png',
                      width: 306,
                      height: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 38,),

          Container(
            width: 342,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xffFFB063),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Salvar",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xff000000),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),
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
                image: const AssetImage('assets/images/bottom4.png'),
                fit: BoxFit.cover,
                width: 59,
                height: 49,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/images/bottom5.png'),
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
