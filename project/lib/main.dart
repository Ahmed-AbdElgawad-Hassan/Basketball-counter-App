import 'package:flutter/material.dart';

void main() {
  runApp(const Basketball_App());
}

// ignore: must_be_immutable, camel_case_types
class Basketball_App extends StatefulWidget {
  const Basketball_App({super.key});

  @override
  State<Basketball_App> createState() => _Basketball_AppState();
}

// ignore: camel_case_types
class _Basketball_AppState extends State<Basketball_App> {
  // ignore: non_constant_identifier_names
  int TeamA_points = 0;

  // ignore: non_constant_identifier_names
  int TeamB_points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed:(){
          setState(() {
            TeamA_points=0;
            TeamB_points=0;
            
          });
        }
        ,child:const Text('Reset',style: TextStyle(fontWeight: FontWeight.bold),),
         ),
        backgroundColor: const Color(0xffFF9902),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xffFF9902),
          title: const Text(
            "pointer counter",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          ),
        ),
        body: Container(
          height: 730,
          width: double.infinity,
          color: Colors.cyan,
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Center(
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Team A",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$TeamA_points',
                            style: const TextStyle(
                              fontSize: 159,
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: const Size(145, 45),
                                backgroundColor: const Color(0xffFF9902),
                              ),
                              onPressed: () {
                                TeamA_points++;
                                setState(() {});
                              },
                              child: const Text(
                                "Add 1 point",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 15,
                            width: 160,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: const Size(145, 45),
                                backgroundColor: const Color(0xffFF9902),
                              ),
                              onPressed: () {
                                TeamA_points += 2;
                                setState(() {});
                              },
                              child: const Text(
                                "Add 2 point",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 15,
                            width: 160,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: const Size(145, 45),
                                backgroundColor: const Color(0xffFF9902),
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamA_points += 3;
                                });
                              },
                              child: const Text(
                                "Add 3 point",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 27,
                        endIndent: 120,
                      ),
                      Column(
                        children: [
                          const Text(
                            "Team B",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "$TeamB_points",
                            style: const TextStyle(
                              fontSize: 159,
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: const Size(145, 45),
                                backgroundColor: const Color(0xffFF9902),
                              ),
                              onPressed: () {
                                TeamB_points++;
                                setState(() {});
                              },
                              child: const Text(
                                "Add 1 point",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          const SizedBox(
                            height: 15,
                            width: 160,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: const Size(145, 45),
                                backgroundColor: const Color(0xffFF9902),
                              ),
                              onPressed: () {
                                TeamB_points += 2;
                                setState(() {});
                              },
                              child: const Text(
                                "Add 2 point",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 15,
                            width: 160,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: const Size(145, 45),
                                backgroundColor: const Color(0xffFF9902),
                              ),
                              onPressed: () {
                                TeamB_points += 3;
                                setState(() {});
                              },
                              child: const Text(
                                "Add 3 point",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    minimumSize: const Size(180, 50),
                    backgroundColor: const Color(0xffFF9902),
                    
                  ),
                  onPressed: () {
                    setState(() {
                      TeamA_points = 0;
                      TeamB_points = 0;
                    });
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
