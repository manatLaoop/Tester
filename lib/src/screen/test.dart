// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Testss extends StatefulWidget {
  const Testss({super.key});

  @override
  State<Testss> createState() => _TestssState();
}

class _TestssState extends State<Testss> {
  bool imageStatus = false;

  List<Map<String, dynamic>> data = <Map<String, dynamic>>[
    {
      'profile':
          "https://media.istockphoto.com/id/1087673356/photo/highway-at-sunrise-going-into-death-valley-national-park.webp?b=1&s=170667a&w=0&k=20&c=od3Ld7wiaJX8pKEfzVhHkb_EanKWTvtMXCt-4Y3RpD4=",
      'name': 'bananabananabananabananabananabanana',
      'status': true,
      'off': "18.00",
      'promotion': '18'
    },
    {
      'profile':
          "https://media.istockphoto.com/id/1087673356/photo/highway-at-sunrise-going-into-death-valley-national-park.webp?b=1&s=170667a&w=0&k=20&c=od3Ld7wiaJX8pKEfzVhHkb_EanKWTvtMXCt-4Y3RpD4=",
      'name': 'demo',
      'status': true,
      'off': "18.00",
      'promotion': '16'
    },
    {
      'profile':
          "https://media.istockphoto.com/id/1087673356/photo/highway-at-sunrise-going-into-death-valley-national-park.webp?b=1&s=170667a&w=0&k=20&c=od3Ld7wiaJX8pKEfzVhHkb_EanKWTvtMXCt-4Y3RpD4=",
      'name': 'test',
      'status': false,
      'off': "18.00",
      'promotion': "15"
    },
    {
      'profile':
          "https://media.istockphoto.com/id/1087673356/photo/highway-at-sunrise-going-into-death-valley-national-park.webp?b=1&s=170667a&w=0&k=20&c=od3Ld7wiaJX8pKEfzVhHkb_EanKWTvtMXCt-4Y3RpD4=",
      'name': 'i love Code',
      'status': false,
      'off': "18.00",
      'promotion': '10'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(),
            child: Image(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.pexels.com/photos/16777741/pexels-photo-16777741/free-photo-of-a-person-walking-on-a-white-sand-dune.jpeg?auto=compress&cs=tinysrgb&w=600')),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: MediaQuery.of(context).size.height * 0.2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    border: Border(), borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'travel',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        fontStyle: FontStyle.normal,
                        letterSpacing: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Container(
                        color: Colors.white,
                      ),
                      height: 2,
                    ),
                    Text(
                      'Laoop',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        letterSpacing: MediaQuery.of(context).size.width * 0.09,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 30,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,
                            color: Color.fromARGB(255, 156, 154, 154),
                            offset: Offset(1, 3),
                            blurStyle: BlurStyle.normal,
                            spreadRadius: 4),
                      ],
                      color: Colors.white,
                      border: Border.all(
                        color: Color.fromARGB(221, 110, 110, 110),
                        width: 1,
                      ),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              boxShadow: const <BoxShadow>[
                                                BoxShadow(
                                                  blurStyle: BlurStyle.solid,
                                                  blurRadius: 5,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  spreadRadius: 1,
                                                  offset: Offset(0, 0),
                                                ),
                                              ],
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      '${data[index]['profile']}')),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        flex: 2,
                                        child: Container(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Flexible(
                                                child: Text(
                                              '${data[index]['name']}',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: textStyle(
                                                  fColors: Colors.black,
                                                  fWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            )),
                                            Flexible(
                                                flex: 1,
                                                child: Row(
                                                  children: [
                                                    Flexible(
                                                      flex: 1,
                                                      child: data[index]
                                                                  ['status'] ==
                                                              true
                                                          ? Text(
                                                              'เปิดอยู่',
                                                              style: textStyle(
                                                                  fColors: Colors
                                                                      .green,
                                                                  fWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 15),
                                                            )
                                                          : Text(
                                                              'ปิด',
                                                              style: textStyle(
                                                                  fColors:
                                                                      Colors
                                                                          .red,
                                                                  fWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 15),
                                                            ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Flexible(
                                                      flex: 1,
                                                      child: data[index]
                                                                  ['status'] ==
                                                              true
                                                          ? Text(
                                                              'ปิด ${data[index]['off']}น.',
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: textStyle(
                                                                  fontSize: 14,
                                                                  fColors:
                                                                      Colors
                                                                          .red),
                                                            )
                                                          : Text(
                                                              'เปิด ${data[index]['off']}น.',
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: textStyle(
                                                                  fontSize: 14,
                                                                  fColors: Colors
                                                                      .green),
                                                            ),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 200, 93, 86))),
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Text(
                                            'โปรโมชั่นลูกค้าใหม่ลด',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: textStyle(
                                              fColors: Colors.black54,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            '${data[index]['promotion'].toString()} %',
                                            style: textStyle(
                                                fColors: Colors.orange,
                                                fWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                // width: MediaQuery.of(context).size.width * 0.8,
                                // height:
                                //     MediaQuery.of(context).size.height * 0.2,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  TextStyle textStyle({
    double? fontSize,
    FontWeight? fWeight,
    Color? fColors,
  }) {
    return TextStyle(
        fontWeight: fWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 16,
        color: fColors ?? Colors.grey);
  }
}
