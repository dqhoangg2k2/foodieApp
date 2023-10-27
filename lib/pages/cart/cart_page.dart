import 'package:flutter/material.dart';
import 'package:foodie_flutter/components/app_bar/foodie_app_bar.dart';
import 'package:foodie_flutter/components/app_dialog.dart';
import 'package:foodie_flutter/models/food_model.dart';
import 'package:foodie_flutter/pages/cart/widget/delivery_time.dart';
import 'package:foodie_flutter/pages/cart/widget/food_item.dart';
import 'package:foodie_flutter/pages/payment/payment_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double get totalPrice {
    double totalPrice = 0.0;
    for (FoodModel food in foods) {
      totalPrice += food.price ?? 0.0;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FoodieAppBar(
        leftPressed: () => AppDialog.confirmExitApp(context),
        title: 'Foodies',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0)
              .copyWith(top: 6.0, bottom: 26.0),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: foods.length,
                itemBuilder: ((BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: FoodItem(food: foods[index]),
                  );
                }),
              ),
              const SizedBox(height: 52.0),
              DeliveryTime(
                onPlaceOrder: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PaymentPage()),
                ),
                minutes: 25,
                totalPrice: totalPrice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
