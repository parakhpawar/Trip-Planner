import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String buttonClick = 'Click';
  int newindex = 0;
  String submitted = 'Submitted';
  final textclear = TextEditingController();
  final textclear1 = TextEditingController();
  void clearText() {
    textclear.clear();
    textclear1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solo - Trip planner'),
      ),
      body: Center(
        child: newindex == 1
            ? Container(
                margin: const EdgeInsets.fromLTRB(30, 20, 30, 30),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                    color: Color.fromARGB(255, 230, 226, 205)),
                height: 320,
                width: 320,
                child: Center(
                  child: SizedBox(
                    width: 240,
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10,10,10,1),
                          child: Center(
                              child: Text('Enter the place you want to visit?')),
                        ),
                        TextField(
                          controller: textclear,
                        ),
                        const Center(
                            child: Text('\nHow Many days do you want to visit?')),
                        TextField(
                          controller: textclear1,
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                          child: Row( 
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,5,5,2),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    onPrimary: Colors.red,
                                    backgroundColor: Colors.amber,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return SecondPage();
                                    }));
                                    setState(
                                      () {
                                        buttonClick = submitted;
                                      },
                                    );
                                  },
                                  child: Text(buttonClick),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8,5,10,2),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      onPrimary: Colors.red,
                                      backgroundColor: Colors.amber,
                                    ),
                                    onPressed: clearText,
                                    child: const Text('Clear')),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.fromLTRB(0, 70, 0, 20),
                child: Column(
                  children: [
                    const SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Welcome To Solo-The Trip planner\n\n\n',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Image.network(
                        'https://media.istockphoto.com/id/1221227577/photo/end-of-the-world-street-in-chile-patagonia.jpg?s=612x612&w=0&k=20&c=PamhXMjErITclVZRV7E43je3FPFI7IxhAM-U_2qhR_E=')
                  ],
                ),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Next', icon: Icon(Icons.arrow_forward)),
        ],
        currentIndex: newindex,
        onTap: (int index) {
          setState(() {
            newindex = index;
          });
        },
    ),
);
}
}