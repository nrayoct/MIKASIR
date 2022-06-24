import 'package:mikasir/model/produkModel.dart';
import 'package:http/http.dart' as http;

class ProdukService {
  static final String _baseUrl = 'http://192.168.100.246:8000/api/v1/produk';

  Future getProduk() async {
    Uri urlApi = Uri.parse(_baseUrl);

    final response = await http.get(urlApi);
    if (response.statusCode == 200) {
      return produkFromJson(response.body.toString());
    } else {
      throw Exception("failed or load data produk");
    }
  }
}
