import 'package:flutter/material.dart';

class BrandsName extends StatefulWidget {
  @override
  _BrandsName createState() => _BrandsName();
}

class _BrandsName extends State<BrandsName> {

  final brandsName = ['Acwell','Amorepacific','Banila Co',
    'Caudalie','Chanel', 'Cosrx', 'Drunk Elephant',
    'Etude House',
    'La Mer','Lancome','Missha','Neogen',
    'Ren Clean Skincare','Shiseido','Skinfood','Tatcha', 'Tony Moly'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Brands')
      ),
      body: Container(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return ListView.builder(
      itemCount: brandsName.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(brandsName[index]),
          trailing: Icon(Icons.keyboard_arrow_right),
        );
      },
    );
  }
}
