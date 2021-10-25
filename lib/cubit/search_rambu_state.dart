part of 'search_rambu_cubit.dart';

abstract class SearchRambuState extends Equatable {
  const SearchRambuState();

  @override
  List<Object> get props => [];
}

class SearchRambuInitial extends SearchRambuState {}

class SearchRambuLoading extends SearchRambuState {}

class SearchRambuSucess extends SearchRambuState {
  final List<RambuModel> rambu;
  SearchRambuSucess(this.rambu);

  @override
  List<Object> get props => [rambu];
}

class SearchRambuFailed extends SearchRambuState {
  final String error;

  SearchRambuFailed(this.error);

  @override
  List<Object> get props => [error];
}
