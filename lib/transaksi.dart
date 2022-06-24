import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({Key? key}) : super(key: key);

  static const String _title = 'MIKASIR';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffebb844), title: const Text(_title)),
        body: Transaksii(),
      ),
    );
  }
}

class Transaksii extends StatefulWidget {
  @override
  _TransaksiiState createState() => new _TransaksiiState();
}

class _TransaksiiState extends State<Transaksii> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

  void _submit() {
    // you can write your
    // own code according to
    // whatever you want to submit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _uiWidget(),

      //SizedBox(width: 35, child: IconButton(onPressed: onPressed, icon: icon),)
    );
  }

  Widget _uiWidget() {
    return new Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: FormHelper.inputFieldWidgetWithLabel(
                      context, "kode_produk", "Kode Produk", "",
                      (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Kode tidak boleh kosong";
                    }
                    return null;
                  }, (onSavedVal) {
                    //model produk this.userModel.userName = onSavedVal;
                  },
                      //initialValue: produkModel.kodeProduk?? "",
                      borderColor: Color(0xffebb844),
                      borderFocusColor: Colors.white,
                      borderRadius: 10,
                      fontSize: 14,
                      labelFontSize: 14),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: FormHelper.inputFieldWidgetWithLabel(
                      context, "jumlah_produk", "Jumlah Produk", "",
                      (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Jumlah tidak boleh kosong";
                    }
                    return null;
                  }, (onSavedVal) {
                    //model produk this.userModel.userName = onSavedVal;
                  },
                      //initialValue: produkModel.kodeProduk?? "",
                      borderColor: Color(0xffebb844),
                      borderFocusColor: Colors.white,
                      borderRadius: 10,
                      fontSize: 14,
                      labelFontSize: 14),
                ),
                Positioned(
                  child: Center(
                      child: RaisedButton(
                    onPressed: _submit,
                    child: Text("Tambah"),
                  )),
                )
              ],
            ),
          ),
        ));
  }
}
