import 'package:flutter/material.dart';

import 'themes.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.12),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.16,
              margin: EdgeInsets.all(defaultMargin),
              padding: EdgeInsets.only(left: defaultMargin + 10),
              decoration: BoxDecoration(
                color: const Color(0XFF5463FF).withOpacity(0.6),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '50% OFF',
                    style: fontStyles.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '02 - 05 Juli 2022',
                    style: fontStyles.copyWith(
                      color: Colors.white54,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.30,
          padding: EdgeInsets.only(left: defaultMargin + 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network(
                'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-13-blue-select-2021?wid=940&hei=1112&fmt=png-alpha&.v=1645572386470',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
