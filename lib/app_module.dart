import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_inventory/customer_list/ui/customer_list.dart';
import 'package:my_inventory/homepage/ui/homepage.dart';

class AppModule extends Module {
  AppModule();

  @override
  void binds(i) {
    // i.addInstance<http.Client>(http.Client());
    // i.add<SearchDatasource>(GithubSearchDatasource.new);
    // i.add<SearchRepository>(SearchRepositoryImpl.new);
    // i.add<SearchByText>(SearchByTextImpl.new);
    // i.addSingleton<SearchStore>(SearchStore.new, config: storeConfig());
  }

  @override
  void routes(r) {
    r.child('/', child: (_) => Homepage());
    r.child(
      '/customer',
      child: (_) => CustomerList(),
      // guards: [
      //   GuardT(),
      // ],
    );
  }
}
