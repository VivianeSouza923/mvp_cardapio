import 'package:flutter/material.dart';

class AddTablesModal extends StatefulWidget {
  const AddTablesModal({Key? key}) : super(key: key);

  @override
  State<AddTablesModal> createState() => _AddTablesModalState();
}

class _AddTablesModalState extends State<AddTablesModal> {
  int count = 0;


  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty => count == 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4.26,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 52,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Quantidade de mesas',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          color: Colors.black,
                          icon: const Icon(
                            Icons.remove,
                            size: 12,
                            color: Colors.white,
                          ),
                          onPressed: isEmpty ? null : decrement,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          '$count',
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'Inter'),
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          onPressed: increment,
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 342,
              height: 48,
              margin: const EdgeInsets.only(bottom: 25),
              child: ElevatedButton(
                onPressed: () {

                  
                
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFB063)),
                child: const Text(
                  "Adicionar mesas",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  

 
}
