import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

import '../../main.dart';

getProductCategoryName({String? id}) {
  if (id != null) {
    String? name = isar.categoryDatabaseModels
        .filter()
        .categoryIdEqualTo(id)
        .findFirstSync()
        ?.categoryName;

    return name;
  }
}

getUomName({required String id}) {
  // var uomBox = Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
  // return uomBox.get(id)!.name;
  String? name = isar.unitOfMeasurementDatabaseModels
      .filter()
      .uomIdEqualTo(id)
      .findFirstSync()
      ?.name;
  return name;
}
