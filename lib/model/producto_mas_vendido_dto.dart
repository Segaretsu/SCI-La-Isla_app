class ProductoMasVendidoDTO {
  int idProducto;
  int idTipoCategoriaProducto;
  int cantidadProductoVendido;
  int cantidadVentas;
  String categoria;
  num gananciaPorProductoVendido;
  num gananciaTotal;
  String nombre;
  // String mayorFormaPago;
  num valorTotalVentas;

  ProductoMasVendidoDTO({
    required this.idProducto,
    required this.idTipoCategoriaProducto,
    required this.cantidadProductoVendido,
    required this.cantidadVentas,
    required this.categoria,
    required this.gananciaPorProductoVendido,
    required this.gananciaTotal,
    required this.nombre,
    // required this.mayorFormaPago,
    required this.valorTotalVentas,
  });

  factory ProductoMasVendidoDTO.fromJson(Map<String, dynamic> json) {
    return ProductoMasVendidoDTO(
      idProducto: json["idProducto".toUpperCase()],
      idTipoCategoriaProducto: json["idTipoCategoriaProducto".toUpperCase()],
      cantidadProductoVendido: json["cantidadProductoVendido".toUpperCase()], 
      cantidadVentas: json["cantidadVentas".toUpperCase()], 
      categoria: json["categoria".toUpperCase()], 
      gananciaPorProductoVendido:  json["gananciaPorProductoVendido".toUpperCase()], 
      gananciaTotal: json["gananciaTotal".toUpperCase()], 
      nombre: json["nombre".toUpperCase()], 
      // mayorFormaPago: json["mayorFormaPago"], 
      valorTotalVentas: json["valorTotalVentas".toUpperCase()]
    );
  }
}
