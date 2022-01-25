import 'dart:convert';

import 'package:flutter_la_isla/model/producto_mas_vendido_DTO.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://10.0.2.2:8001";

  Future<List<ProductoMasVendidoDTO>> getMasVendidos() async {
    var apiUrl = '/reportes-productos/findMasVendidos';
    http.Response res = await http.post(Uri.parse(baseUrl + apiUrl), 
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'byFecha': false,
      }),
    );
    try {
      if (res.statusCode == 200 || res.statusCode == 201) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list
            .map((producto) => ProductoMasVendidoDTO.fromJson(producto))
            .toList();
      } else {
        return <ProductoMasVendidoDTO>[];
      }
    } catch (e) {
      print("-------- ERROR ---");
      print(e);
      return <ProductoMasVendidoDTO>[];
    }
  }
}
