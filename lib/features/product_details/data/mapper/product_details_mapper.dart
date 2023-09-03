import 'package:shop_app/core/extension/extensions.dart';
import 'package:shop_app/features/product_details/data/mapper/product_details_data_mapper.dart';
import 'package:shop_app/features/product_details/data/response/product_details_response.dart';
import 'package:shop_app/features/product_details/domain/model/product_details_model.dart';

extension ProductDetailsMapper on ProductDetailsResponse {
  ProductDetailsModel toDomain() {
    return ProductDetailsModel(
      data: data!.map((e) => e.toDomain()).toList(),
      status: status.onNull(),
      success: success.onNull(),
    );
  }
}
