import 'package:demo1/routine.dart';
import 'package:flutter/material.dart';
import 'article.dart';
import 'brands.dart';
import 'products.dart';

class NewHomePage extends StatefulWidget {
  @override
  _NewHomePage createState() => _NewHomePage();
}

class _NewHomePage extends State<NewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: _topMenu(context),
        ),
        Expanded(
          flex: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(30),
                      alignment: Alignment.center,
                      color: Colors.tealAccent,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Article()),
                          );
                        },
                        child: Image.asset(
                          'assets/image2.jpeg',
                          height: 250,
                          width: double.infinity,
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      //padding: EdgeInsets.all(10),
                      child: Text(
                        'Which Exfoliant Is Right for You? ',
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset('assets/image1.jpg'),
                    ),
                    Expanded(
                      child: Text('The Do\'s & Don\'ts of SkinCare Mixing',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.0),),
                    ),
                    Expanded(
                      child: Image.asset('assets/image3.jpg'),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/sheetMasks.png',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'What to do during \nshelter-in-place? \nEAT, SLEEP, MASKS, \nREPEAT!!!',
                          style: TextStyle(
                            //color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _topMenu(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BrandsName()),
                    );
                  },
                  child: Text(
                    'Brands',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24.0),
                  ),
                )),
            Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductsList()),
                    );
                  },
                  child: Text(
                    'Products',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24.0),
                  ),
                )),
            Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Routine()),
                    );
                  },
                  child: Text(
                    'Routine',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24.0),
                  ),
                )),
          ],
        ));
  }
}