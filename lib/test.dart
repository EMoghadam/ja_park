import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  static String id = "Test_id";

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: Colors.amber,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              child: Image.asset(
                                "images/image1.jpg",
                                width: 150,
                                height: 180,
                              ),
                            ),
                            Container(
                              height: 200,
                              child: Image.asset("images/image2.jpg"),
                            ),
                            Container(
                              height: 200,
                              child: Image.asset("images/image3.jpg"),
                            ),
                            Container(
                              height: 200,
                              child: Image.asset("images/image4.jpg"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "اطلاعات پارکینگ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Text(
                          "نام پارکینگ :",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "ساعات کاری :",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "هزینه ورودی :",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "تعداد ظرفیت خالی :",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
