
import 'package:flutter/material.dart';
import 'package:getx_application1/controllers/brand_controller.dart';

class BrandPage extends StatefulWidget {
final String token;

const BrandPage({
super.key,
required this.token,
});

@override
State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
final BrandController controller = BrandController();

bool isLoading = true;

@override
void initState() {
super.initState();
getBrandData();
}

Future<void> getBrandData() async {
print("BRAND PAGE: API CALL STARTED");

// Pass token to BrandController
await controller.getBrands(widget.token);

print(
"BRAND PAGE: Brands count = ${controller.brands.length}",
);

setState(() {
isLoading = false;
});
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Brands"),
),
body: isLoading
? const Center(
child: CircularProgressIndicator(),
)
    : controller.brands.isEmpty
? const Center(
child: Text(
"No Brands Found",
style: TextStyle(fontSize: 20),
),
)
    : ListView.builder(
itemCount: controller.brands.length,
itemBuilder: (context, index) {
final brand = controller.brands[index];

return Card(
margin: const EdgeInsets.all(10),
elevation: 5,
child: Padding(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
brand.description,
style: const TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 10),

Text("Code: ${brand.codePk}"),
Text("Delete Flag: ${brand.deleteFlag}"),
Text("Parent Code: ${brand.parentCode}"),
Text("Parent Type: ${brand.parentType}"),
Text("Type: ${brand.typePk}"),
Text("Value: ${brand.value}"),
],
),
),
);
},
),
);
}
}
