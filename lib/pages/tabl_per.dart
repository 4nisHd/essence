import 'package:essence/files/Data.dart';
import 'package:flutter/material.dart';

class ElementPage extends StatefulWidget {
  final int atomicnum;
  const ElementPage({Key? key, required this.atomicnum}) : super(key: key);

  @override
  _ElementPageState createState() => _ElementPageState();
}

var number;
bool touch = false;

class _ElementPageState extends State<ElementPage> {
  @override
  Widget build(BuildContext context) {
    Period p = new Period();

    var data = p.period;
    setState(() {
      number = widget.atomicnum.toInt();
    });

    var mass = data[widget.atomicnum]['atomicMass'].toString();
    mass = mass.substring(0, 3);
    var responsive = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      body: responsive.width > 760
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white60,
                          size: 30,
                        ),
                      ),
                      Text(
                        data[widget.atomicnum]['name'],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Sideinfo(
                              data: data,
                              atomicnum: widget.atomicnum,
                              mass: mass)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 600,
                              height: 600,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 30),
                                  child: ListView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'More Info',
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 500,
                                            child: Text(
                                              data[widget.atomicnum]['name'] +
                                                  ' belongs to the group of ' +
                                                  data[widget.atomicnum]
                                                      ['groupBlock'] +
                                                  ' elements.',
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Atomic Radius : ',
                                          ),
                                          Text(
                                            data[widget.atomicnum]
                                                    ['atomicRadius'] +
                                                ' pm',
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Boiling Point : ',
                                            ),
                                            Text(
                                              data[widget.atomicnum]
                                                      ['boilingPoint'] +
                                                  ' K',
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Melting Point : ',
                                          ),
                                          Text(
                                            data[widget.atomicnum]
                                                    ['meltingPoint'] +
                                                ' K',
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Electronic config : ',
                                            ),
                                            Text(
                                              data[widget.atomicnum]
                                                  ['electronicConfiguration'],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Ionisation Energy : ',
                                          ),
                                          Text(
                                            data[widget.atomicnum]
                                                    ['ionizationEnergy'] +
                                                ' joules',
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              'State of matter : ',
                                            ),
                                            Text(
                                              data[widget.atomicnum]
                                                          ['standardState']
                                                      .substring(0, 1)
                                                      .toUpperCase() +
                                                  data[widget.atomicnum]
                                                          ['standardState']
                                                      .substring(1),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Van der Waals radius : ',
                                          ),
                                          Text(
                                            data[widget.atomicnum]
                                                    ['vanDelWaalsRadius'] +
                                                ' pm',
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white60,
                          size: 30,
                        ),
                      ),
                      Text(
                        data[widget.atomicnum]['name'],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Sideinfo(
                              data: data,
                              atomicnum: widget.atomicnum,
                              mass: mass)
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 600,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'More Info:',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: Text(
                                        data[widget.atomicnum]['name'] +
                                            ' belongs to the group of ' +
                                            data[widget.atomicnum]
                                                ['groupBlock'] +
                                            ' elements.',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Atomic Radius : ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      data[widget.atomicnum]['atomicRadius'] +
                                          ' pm',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Boiling Point : ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        data[widget.atomicnum]['boilingPoint'] +
                                            ' K',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Melting Point : ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      data[widget.atomicnum]['meltingPoint'] +
                                          ' K',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Electronic config : ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        data[widget.atomicnum]
                                            ['electronicConfiguration'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Ionisation Energy : ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      data[widget.atomicnum]
                                              ['ionizationEnergy'] +
                                          ' joules',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'State of matter : ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        data[widget.atomicnum]['standardState']
                                                .substring(0, 1)
                                                .toUpperCase() +
                                            data[widget.atomicnum]
                                                    ['standardState']
                                                .substring(1),
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Van der Waals radius : ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      data[widget.atomicnum]
                                              ['vanDelWaalsRadius'] +
                                          ' pm',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class Sideinfo extends StatelessWidget {
  const Sideinfo({
    Key? key,
    required this.data,
    required this.atomicnum,
    required this.mass,
  }) : super(key: key);

  final List data;
  final int atomicnum;
  final String mass;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 600,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 74, 86, 194),
              Color.fromARGB(255, 199, 83, 122)
            ],
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                data[atomicnum]['symbol'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Atomic Symbol',
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                mass,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Atomic Mass',
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                data[atomicnum]['electronegativity'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Electronegativity',
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                data[atomicnum]['yearDiscovered'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Year Discovered',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
