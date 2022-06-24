import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String _title = 'MIKASIR';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffebb844), title: const Text(_title)),
        body: Homee(),
      ),
    );
  }
}

class Homee extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Homee> {
  //final ProductController productController = Get.put(ProductController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(),
        ),
        Expanded(
            child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount:
                    1000, //ini nanti diganti jadi productController.productList.length
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 100,
                    color: Color(0xffebb844),
                  );
                  //nanti kalo udh di oasang model, sma controllernya cb masukin ini buat tampilannya
                  //return ProductTile(productController.productList[index]);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1)))
      ],
    ));
  }
}
