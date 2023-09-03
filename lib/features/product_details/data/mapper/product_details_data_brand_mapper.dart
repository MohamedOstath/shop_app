import 'package:shop_app/core/extension/extensions.dart';
import 'package:shop_app/features/product_details/data/response/product_details_data_brand_response.dart';
import 'package:shop_app/features/product_details/domain/model/product_details_data_brand_model.dart';

extension ProductDetailsDataBrandMapper on ProductDetailsDataBrandResponse {
  ProductDetailsDataBrandModel toDomain() {
    return ProductDetailsDataBrandModel(
      id: id.onNull(),
      name: name.onNull(),
      logo: logo.onNull(),
    );
  }
}
