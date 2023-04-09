import 'package:bmi_app/main.dart';
import 'package:bmi_app/result.dart';
import 'package:flutter/material.dart';
import 'result.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

double result = 0.0;
bool isMale = true;
int age = 18;
int weight = 80;
double height = 170;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: mytextstyle('Body mass index', 25),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      m1(),
                      const SizedBox(
                        width: 15,
                      ),
                      m2()
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      m4(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      m3('w'),
                      const SizedBox(
                        width: 15,
                      ),
                      m3('ag')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(10))),
                          onPressed: () {
                            result =
                                (weight / ((height / 100) * (height / 100)));
                            Navigator.of(context).pushNamed('/x');
                          },
                          child: mytextstyle1('Calculate', 30)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Expanded m1() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isMale = true;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: isMale == true ? Colors.green : Colors.grey,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.male_rounded, size: 100),
              mytextstyle1('Male', 30)
            ],
          ),
        ),
      ),
    );
  }

  Expanded m2() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isMale = false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: isMale == false
                  ? Color.fromARGB(255, 211, 148, 151)
                  : Colors.grey,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.female_rounded, size: 100),
              mytextstyle1('Female', 30)
            ],
          ),
        ),
      ),
    );
  }

  Expanded m3(String x) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mytextstyle1(x == 'w' ? 'Weight' : 'Age', 30),
            mytextstyle1(x == 'w' ? '$weight' : '$age', 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton.extended(
                      heroTag: null,
                      onPressed: () {
                        setState(() {
                          x == 'w' ? weight += 1 : age += 1;
                        });
                      },
                      label: mytextstyle1('+', 30)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton.extended(
                      heroTag: null,
                      onPressed: () {
                        setState(() {
                          if (x == 'w' && weight > 1) {
                            weight--;
                          } else if (x == 'ag' && age > 1) {
                            age--;
                          }
                          //x == 'w' ? weight -= 1 : age -= 1;
                          /* weight == -1 ? weight == 0 : weight = weight;
                          age == -1 ? age == 0 : age = age;*/
                        });
                      },
                      label: mytextstyle1('-', 30)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Expanded m4() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.height_rounded, size: 100),
                mytextstyle1('Height', 30)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mytextstyle1('$height', 30),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  'cm',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Slider(
                thumbColor: Colors.white,
                activeColor: Color.fromARGB(255, 18, 139, 129),
                value: height,
                min: 0.0,
                max: 250,
                divisions: 250,
                onChanged: (double d) {
                  setState(() {
                    height = d;
                  });
                })
          ],
        ),
      ),
    );
  }
}
   



   /*GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            width: 190,
                            height: 190,
                            decoration: BoxDecoration(
                                color: isMale == false
                                    ? Color.fromARGB(255, 211, 148, 151)
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.female_rounded),
                                mytextstyle1('Female', 30)
                              ],
                            ),
                          ),
                        )*/