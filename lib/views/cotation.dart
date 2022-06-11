import 'package:flutter/material.dart';

class cotation extends StatefulWidget {
  const cotation({Key? key}) : super(key: key);

  @override
  State<cotation> createState() => _cotationState();
}

class _cotationState extends State<cotation> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.centerLeft, colors: [
            Color.fromARGB(255, 253, 194, 0),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 16, 178, 11),
          ])),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                    child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(65),
                          topRight: Radius.circular(65),
                        )),
                    child: Column(children: <Widget>[
                      Center(
                        child: Text(
                          "top 10 instruments".toUpperCase(),
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                        ),
                      )
                    ]),
                  ),
                )
              ]),
        ),
      );
}
