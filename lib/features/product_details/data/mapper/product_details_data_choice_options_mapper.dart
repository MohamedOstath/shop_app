import 'package:shop_app/core/extension/extensions.dart';
import 'package:shop_app/features/product_details/data/response/product_details_data_choice_options_response.dart';
import 'package:shop_app/features/product_details/domain/model/product_details_data_choice_options_model.dart';

extension ProductDetailsDataChoiceOptionsMapper
    on ProductDetailsDataChoiceOptionsResponse {
  ProductDetailsDataChoiceOptionsModel toDomain() {
    return ProductDetailsDataChoiceOptionsModel(
      name: name.onNull(),
      options: options.onNull(),
      title: title.onNull(),
    );
  }
}
