import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/customer_list/ui/customer_list.dart';
import 'package:my_inventory/homepage/ui/homepage.dart';

class AppModule extends Module {
  AppModule();

  @override
  void binds(i) {
    // i.addInstance<http.Client>(http.Client());
    i.add<AppController>(() => AppController());
    // i.add<SearchRepository>(SearchRepositoryImpl.new);
    // i.add<SearchByText>(SearchByTextImpl.new);
    // i.addSingleton<SearchStore>(SearchStore.new, config: storeConfig());
  }

  @override
  void routes(r) {
    r.child('/y', child: (_) => Homepage());
    r.child(
      '/customer',
      child: (_) => CustomerList(),
      // guards: [
      //   GuardT(),
      // ],
    );
    r.wildcard(child: (_) => Center(child: Text('none')));
  }
}
