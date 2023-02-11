import 'package:crypto_wallet_nft/providers/calculprovider.dart';
import 'package:crypto_wallet_nft/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Consumer<CalculProvider>(
        builder: (_, prv, ___) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(prv.result, style: AppConstants.fonts.largeHeading),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2,
                    ),
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 11) {
                        return GestureDetector(
                          onLongPress: () {
                            prv.clear();
                          },
                          onTap: () {
                            prv.delete();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppConstants.colors.primarycolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.backspace,
                                color: AppConstants.colors.white,
                              ),
                            ),
                          ),
                        );
                      }
                      if (index == 10) {
                        return GestureDetector(
                          onTap: () {
                            prv.add("0");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppConstants.colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "0",
                                style: AppConstants.fonts.heading.copyWith(
                                  color: AppConstants.colors.darkColor,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      if (index == 9) {
                        return GestureDetector(
                          onTap: () {
                            prv.add(".");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppConstants.colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                ".",
                                style: AppConstants.fonts.heading.copyWith(
                                  color: AppConstants.colors.darkColor,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      return GestureDetector(
                        onTap: () {
                          prv.add("${index + 1}");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppConstants.colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "${index + 1}",
                              style: AppConstants.fonts.heading.copyWith(
                                color: AppConstants.colors.darkColor,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppConstants.colors.primarycolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(15)),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "Send",
                        style: AppConstants.fonts.heading.copyWith(
                          color: AppConstants.colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
