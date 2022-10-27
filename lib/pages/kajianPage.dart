import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class KajianPage extends StatefulWidget {
  const KajianPage({super.key});

  @override
  State<KajianPage> createState() => _KajianPageState();
}

class _KajianPageState extends State<KajianPage> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Ustad Adi Hidayat",
      "favorite": "\Disukai 4000 Orang",
      "images":
          "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80",
    },
    {
      "title": "Ustad Syam",
      "favorite": "\Disukai 3000 Orang",
      "images":
          "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Ustad Hannan",
      "favorite": "\Disukai 1000 Orang",
      "images":
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    },
    {
      "title": "Ustad Boni",
      "favorite": "\Disukai 900 Orang",
      "images":
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // menunjukkan bahwa container totalnya 45% dari total keseluruhan layar
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Color(0xFFFFD384),
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage("assets/bgkajian.png"))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    child: Container(
                      height: 245,
                      width: 245,
                    ),
                  ),
                  Text(
                    "good Morning",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 38, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        mainAxisExtent: 310,
                      ),
                      itemCount: gridMap.length,
                      itemBuilder: (_, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              16.0,
                            ),
                            color: Color(0xFFFFE57F),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0),
                                ),
                                child: Image.network(
                                  "${gridMap.elementAt(index)['images']}",
                                  height: 170,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${gridMap.elementAt(index)['title']}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .merge(
                                            const TextStyle(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "${gridMap.elementAt(index)['favorite']}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .merge(
                                            TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey.shade500,
                                            ),
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.hotel_class,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
