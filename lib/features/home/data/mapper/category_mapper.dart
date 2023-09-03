import 'package:shop_app/core/extension/extensions.dart';
import 'package:shop_app/features/home/data/response/category_response.dart';
import 'package:shop_app/features/home/presentation/model/category_model.dart';

extension CategoryMapper on CategoryResponse {
  CategoryModel toDomain() {
    return CategoryModel(
      id: id.onNull(),
      name: name.onNull(),
      banner: banner.onNull(),
      icon: icon.onNull(),
      numberOfChildren: numberOfChildren.onNull(),
      links: links!.toDomain(),
    );
  }
}

extension CategoryLinksMapper on CategoryResponseLinks {
  Links toDomain() {
    return Links(
      products: products.onNull(),
      subCategories: subCategories.onNull(),
    );
  }
}
