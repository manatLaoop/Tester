import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                contentPadding:
                    EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          width: 80,
                          child: const Image(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/7194913/pexels-photo-7194913.jpeg?auto=compress&cs=tinysrgb&w=600')),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Banana',
                                  style: Textstyles(
                                      colors: Colors.black,
                                      Fsize: 18,
                                      Fweight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    const Text('4.8'),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'ร้านขายของชำ',
                                      overflow: TextOverflow.ellipsis,
                                      style: Textstyles(
                                          colors: Color.fromARGB(
                                              255, 167, 164, 164),
                                          Fsize: 16),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.motorcycle,
                                      color: Color.fromARGB(255, 4, 162, 20),
                                      size: 15,
                                    ),
                                    Text(
                                      'B20',
                                      style: Textstyles(
                                          colors: Colors.green,
                                          Fsize: 13,
                                          Fweight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '200 ม.',
                                      style: Textstyles(
                                          colors: Color.fromARGB(
                                              255, 174, 174, 173),
                                          Fsize: 13),
                                    ),
                                    Text(
                                      'เปิดอยู่',
                                      style: Textstyles(
                                          colors: Colors.green,
                                          Fsize: 13,
                                          Fweight: FontWeight.bold),
                                    ),
                                    Text(
                                      'ปิด 18.00 น.',
                                      style: Textstyles(
                                          colors: Color.fromARGB(
                                              255, 174, 174, 173),
                                          Fsize: 13),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 1,
                      child: Container(
                        color: Color.fromARGB(255, 231, 229, 229),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child: const Center(
                            child: Text(
                              '1%',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                width: 1,
                                color: Colors.orange,
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 60,
                          height: 30,
                          child: Center(
                            child: Text(
                              'ผู้ใช้ใหม่',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                width: 1,
                                color: Colors.red,
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              'ส่วนลดเมื่อซื้อสินค้าครบ 200 บาทขึ้นไป',
                              style: Textstyles(colors: Colors.grey, Fsize: 15),
                            ),
                          ),
                        ),
                        Text('+3')
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text('clickme')),
    ));
  }

  TextStyle Textstyles(
          {double? Fsize, required Color colors, FontWeight? Fweight}) =>
      TextStyle(
          fontSize: Fsize ?? 16,
          color: colors,
          fontWeight: Fweight ?? FontWeight.normal);
}
