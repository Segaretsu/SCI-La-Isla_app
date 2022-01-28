import 'package:bloc/bloc.dart';
import 'package:flutter_la_isla/cubit/app_cubit_states.dart';
import 'package:flutter_la_isla/model/producto_mas_vendido_dto.dart';
import 'package:flutter_la_isla/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final productosMasVendidos;

  void getData() async {
    try {
      emit(LoadingState());
      productosMasVendidos = await data.getMasVendidos();
      emit(LoadedState(productosMasVendidos));
    } catch (e) {

    }
  }

   detailPage(ProductoMasVendidoDTO producto) {
    emit(LoadingState());
    emit(DetailState(producto));
  }

  goHome() {
    emit(LoadedState(productosMasVendidos));
  }
}
