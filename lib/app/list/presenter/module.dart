import 'package:dart_pokedex/app/list/data/list_repository_imp.dart';
import 'package:dart_pokedex/app/list/domain/list_repository.dart';
import 'package:dart_pokedex/app/list/presenter/bloc/list_bloc.dart';
import 'package:dart_pokedex/app/list/presenter/page/list_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => ListRepositoryImp()),
        Bind((i) => ListBloc(i<ListRepository>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const ListPageView(),
        )
      ];
}
