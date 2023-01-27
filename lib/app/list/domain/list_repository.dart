import 'package:dart_pokedex/app/list/data/models/pokemon.dart';
import 'package:dart_pokedex/app/list/domain/pokemon.dart';
import 'package:dartz/dartz.dart';

abstract class ListRepository {
  Future<Either<List<PokemonUri>, String>> getPokemonList(int page);
  Future<Either<PokemonModel, String>> getPokemon(String url);
}
