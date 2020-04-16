import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  @override
  _Article createState() => _Article();
}

class _Article extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Routi',
          style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 36,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Which Exfoliant Is Right for You? ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/image2.jpeg',
                  //height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ), // A fixed-height child.
                //color: const Color(0xff808000), // Yellow
                //height: 120.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Whether you’re an exfoliation junkie or consider double cleansing '
                      'your form of exfoliation, you could be harming your skin if you’re '
                      'not using the right type of skin-sloughing agent. We turned to the '
                      'pros to give us all of the details on where most of us are going wrong. '
                      'Thankfully, Vermén Verallo-Rowell, MD, dermatopathologist and founder of '
                      'VMV Hypoallergenics, and Rianna Loving, esthetician and founder of Orgo, '
                      'were more than happy give us a breakdown on the best exfoliators for each skin type. ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/image4.png',
                  //height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ), // A fixed-height child.
                //color: const Color(0xff808000), // Yellow
                //height: 120.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Oily Skin ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'If you have oily skin, look for a physical exfoliator, like a scrub or a '
                      'cleansing device. “You can control them by using lighter pressure, '
                      'finer grains, or lower settings as needed,” Verallo-Rowell says. It’s '
                      'easy to go overboard with physical exfoliators, which is why Loving also '
                      'prefers scrubs that are not too abrasive. She recommends choosing light '
                      'granules, like jojoba beads, to avoid damaging the skin.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Dry Skin ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  '“Dry skin types can benefit from exfoliators that remove dead, dull skin '
                      'but also provide hydration,” Loving says. Try something with the finest '
                      'grains in a creamy, lotion texture, one that contains moisturizing oils or '
                      'one that’s honey-based. “Scrubs that contain honey are perfect not only to '
                      'exfoliate but moisturize as well,” Loving says.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Combination Skin (Normal to Dry)',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'If your combination skin is more on the normal-to-dry side, you also have '
                      'options. Verallo-Rowell says, “You’re lucky enough to be able to use '
                      'any exfoliator of your choice.” Since your skin type is less sensitive '
                      'to exfoliation and you won’t be irritating any acne lesions, Verallo-Rowell '
                      'recommends bumping up the exfoliating power with a medium-grade scrubbing particle.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Combination Skin (Normal to Oil)',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Combination skin that’s normal to oily can stick with a physical exfoliator '
                      'or try a light chemical exfoliator. If you prefer to a product that will '
                      'treat the oil, use a cleanser with alpha hydroxy acid (or AHA). “Using '
                      'cleansers with AHA will gently exfoliate, preventing pores from getting '
                      'clogged with oil and dead skin cells,” Loving says.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Acne-Prone Skin ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  '“Acne lesions are inflamed, so they need extra care to minimize further irritation,” '
                      'Verallo-Rowell says. Avoid abrasive physical exfoliators with harsh grains, sugar, '
                      'or salt, and facial brushes as much as possible. “If you have breakouts, use a '
                      'chemical exfoliator to fight oil and acne from a deeper level in the skin,” says '
                      'Loving. “AHA and BHA acids (like salicylic, lactic, and glycolic) will be most '
                      'effective. These will not only fight oil and remove pore-clogging dead skin cells '
                      'but also improve skin\'s texture and repair acne scars.”',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Mature Skin',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Older skin tends to be sensitive and dry, but Verallo-Rowell says it still should be '
                      'exfoliated in order to increase cellular renewal and allow active ingredients to '
                      'penetrate the skin. Try a physical exfoliator with super-fine particles, like a '
                      'microdermabrasion scrub, and aim to work in chemical exfoliation as well, “Chemical '
                      'exfoliators can penetrate skin deeper to improve the appearance of fine lines,” '
                      'Loving says. Products that pack a combination of AHA and BHA acids will be your best bet.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
