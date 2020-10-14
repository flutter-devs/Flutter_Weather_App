import 'package:flutter/material.dart';

class Walletbox extends StatelessWidget {
  const Walletbox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.yellow[100].withOpacity(0.5),
        border: Border.all(color: Colors.black26),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.account_balance_wallet,
                size: 20.0,
              ),
            ),
            SizedBox(width: 13.0),
            Text("Wallet"),
          ],
        ),
      ),
    );
  }
}
