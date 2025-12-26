import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/model/pokemon_list_model.dart';
import 'package:draftea_pokemon_challenge/features/pokedex/pokemon_list/domain/usecase/get_pokemon_list_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_state.dart';
part 'pokemon_list_cubit.freezed.dart';

class PokemonListCubit extends Cubit<PokemonListState> {
  PokemonListCubit({required GetPokemonListUsecase getPokemonListUsecase})
    : _getPokemonListUsecase = getPokemonListUsecase,
      super(const PokemonListState());
  final GetPokemonListUsecase _getPokemonListUsecase;

  static const int _defaultLimit = 20;
  bool _isLoadingMore = false;

  void selectPokemon(String idOrName) {
    if (idOrName.isEmpty) return;
    if (state.selectedIdOrName == idOrName) return;
    emit(state.copyWith(selectedIdOrName: idOrName));
  }

  Future<void> getPokemonList() async {
    emit(state.copyWith(status: PokemonListStatus.loading, errorMessage: null));
    final result = await _getPokemonListUsecase(
      limit: _defaultLimit,
      offset: 0,
    );
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: PokemonListStatus.error,
          errorMessage: failure.exceptionMapper.message,
          dateTime: DateTime.now(),
        ),
      ),
      (pokemonList) => emit(
        state.copyWith(
          status: PokemonListStatus.loaded,
          pokemonList: pokemonList,
          errorMessage: null,
          dateTime: DateTime.now(),
        ),
      ),
    );
  }

  Future<void> loadMore() async {
    final current = state.pokemonList;
    if (current == null) return;
    if (current.next == null) return;
    if (_isLoadingMore) return;

    final currentResults = current.results;
    final offset = currentResults.length;

    _isLoadingMore = true;
    emit(state.copyWith(status: PokemonListStatus.loading));

    final result = await _getPokemonListUsecase(
      limit: _defaultLimit,
      offset: offset,
    );

    result.fold(
      (failure) {
        _isLoadingMore = false;
        emit(
          state.copyWith(
            status: PokemonListStatus.loaded,
            errorMessage: failure.exceptionMapper.message,
            dateTime: DateTime.now(),
          ),
        );
      },
      (nextPage) {
        _isLoadingMore = false;

        if (nextPage.results.isEmpty) {
          emit(
            state.copyWith(
              status: PokemonListStatus.loaded,
              pokemonList: PokemonListModel(
                count: current.count,
                previous: current.previous,
                results: currentResults,
              ),
              errorMessage: null,
              dateTime: DateTime.now(),
            ),
          );
          return;
        }

        final merged = <PokemonListItemModel>[
          ...currentResults,
          ...nextPage.results,
        ];

        emit(
          state.copyWith(
            status: PokemonListStatus.loaded,
            pokemonList: PokemonListModel(
              count: nextPage.count,
              next: nextPage.next,
              previous: nextPage.previous,
              results: merged,
            ),
            errorMessage: null,
            dateTime: DateTime.now(),
          ),
        );
      },
    );
  }

  void clearError() {
    if (state.errorMessage == null) return;
    emit(state.copyWith(errorMessage: null));
  }
}
