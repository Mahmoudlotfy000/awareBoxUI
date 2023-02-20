import 'package:awareboxui/core/utils/awarebox_colors.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 5,
        right: 18,
      ),
      child: Row(
        children: [
          RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.white,
            elevation: 1.5,
            shape: const CircleBorder(),
            child: const Icon(Icons.arrow_back_ios_new,
                color: Colors.black),
          ),
          const Spacer(),
          Stack(
            children: [
              RawMaterialButton(
                onPressed: () {},
                fillColor: Colors.white,
                elevation: 1.5,
                constraints: BoxConstraints.tight(const Size(60, 60)),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
              Transform.translate(
                offset: const Offset(30, -15),
                child: RawMaterialButton(
                  onPressed: () {},
                  fillColor: AwareboxColors.orangeBG,
                  elevation: 1,
                  constraints: BoxConstraints.tight(const Size(20, 20)),
                  shape: const CircleBorder(),
                  child: const Text('0'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
