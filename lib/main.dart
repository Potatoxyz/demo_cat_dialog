import 'package:flutter/material.dart';
import 'mock_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat list'),
      ),
      body: ListView.builder(
          itemExtent: 60,
          itemCount: MockData.cats.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => {
                showDialog(
                    context: context,
                    builder: (context) {
                      var _style =
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
                      return SimpleDialog(
                        contentPadding: EdgeInsets.zero,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Cat detail",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          Image.network("${MockData.cats[index].imgUrl}"),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  "Name：${MockData.cats[index].name}",
                                  style: _style,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Description：${MockData.cats[index].description}",
                                  style: _style,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Age：${MockData.cats[index].age}",
                                  style: _style,
                                ),
                                Wrap(
                                  alignment: WrapAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () => {Navigator.pop(context)},
                                      child: Text('OK'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    })
              },
              child: Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  '${MockData.cats[index].name}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
