import 'package:equatable/equatable.dart';
import 'package:flutter_la_isla/model/producto_mas_vendido_DTO.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {

  @override
  List<Object> get props => [];

}

class WelcomeState extends CubitStates {
  
  @override
  List<Object> get props => [];

}

class LoadingState extends CubitStates {
  
  @override
  List<Object> get props => [];

}
class LoadedState extends CubitStates {

  LoadedState(this.productosMasVendidos);

  final List<ProductoMasVendidoDTO> productosMasVendidos;
  
  // Cuandose agrega un props aca, el state sabe que debe recargar cuando se cambia la data.
  @override
  List<Object> get props => [productosMasVendidos];

}