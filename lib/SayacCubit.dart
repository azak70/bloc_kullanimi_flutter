import 'package:flutter_bloc/flutter_bloc.dart';

class SayacCubit extends Cubit<int> {
  SayacCubit() : super(0);
  void SayacArtir() {
    int sayac = state + 1;
    emit(sayac);
  }

  void SayacAzalt(int miktar) {
    int sayac = state - miktar;
    emit(sayac);
  }
}
