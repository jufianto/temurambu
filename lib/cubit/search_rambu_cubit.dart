import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:temurambu/model/model_rambu.dart';
import 'package:temurambu/service/service_rambu.dart';

part 'search_rambu_state.dart';

class SearchRambuCubit extends Cubit<SearchRambuState> {
  SearchRambuCubit() : super(SearchRambuInitial());

  void fetchRambu(String text) async {
    try {
      emit(SearchRambuLoading());

      List<RambuModel> rambu = await RambuService().fetchRambu(text);

      emit(SearchRambuSucess(rambu));
    } catch (e) {
      emit(SearchRambuFailed(e.toString()));
    }
  }
}
