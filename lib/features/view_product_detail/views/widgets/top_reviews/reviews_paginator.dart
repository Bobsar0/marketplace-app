import 'package:flutter/material.dart';

import '../../../../../shared/styles/tokosmile_colors.dart';

class ReviewsPaginator extends StatelessWidget {
  const ReviewsPaginator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _PaginatorButton(
                  child: Text(
                '<',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              Text(
                '1',
                style: TextStyle(color: TokosmileColors.green),
              ),
              Text('2', style: TextStyle(color: TokosmileColors.defaultGrey)),
              Text('3', style: TextStyle(color: TokosmileColors.defaultGrey)),
              Text('...', style: TextStyle(color: TokosmileColors.defaultGrey)),
              _PaginatorButton(
                isActive: true,
                child: Text('>', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 4,
          child: Text('See more',
              style: TextStyle(fontSize: 14, color: TokosmileColors.green)),
        )
      ],
    );
  }
}

class _PaginatorButton extends StatelessWidget {
  final Widget child;
  final bool isActive;

  const _PaginatorButton({required this.child, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          color: isActive ? TokosmileColors.white : TokosmileColors.brightGrey,
          borderRadius: BorderRadius.circular(100),
          boxShadow: isActive
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ]
              : null),
      alignment: Alignment.center,
      child: child,
    );
  }
}
