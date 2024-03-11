import 'package:hive/hive.dart';

import 'package:my_inventory/core/model/category/category_database_model.dart';

getProductCategoryName({String? id}) {
  var categoryBox = Hive.box<CategoryDatabaseModel>('category');
  if (id != null) {
    String name = categoryBox.values
        .firstWhere((element) => element.categoryId == id)
        .categoryName;
    return name;
  }
}
