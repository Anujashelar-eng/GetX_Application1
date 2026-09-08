
import 'package:getx_application1/model/brand_model.dart';
import 'package:getx_application1/services/brand_services.dart';

class BrandController {
final BrandService brandService = BrandService();

List<BrandModel> brands = [];

Future<void> getBrands(String token) async {
try {
print("CONTROLLER: Calling Brand Service");

final response = await brandService.getBrands(token);

print("CONTROLLER: Status Code = ${response.statusCode}");
print("CONTROLLER: Response Data = ${response.data}");
print("CONTROLLER: Response Type = ${response.data.runtimeType}");

brands = (response.data as List)
    .map((item) => BrandModel.fromJson(item))
    .toList();

print("CONTROLLER: Total Brands = ${brands.length}");
} catch (e) {
print("CONTROLLER ERROR: $e");
}
}
}