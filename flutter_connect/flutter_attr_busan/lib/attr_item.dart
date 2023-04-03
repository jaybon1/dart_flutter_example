import 'package:flutter/material.dart';
import 'package:flutter_attr_busan/attr_dto.dart';

class AttrItem extends StatelessWidget {
  final AttrDTO attrDTO;
  const AttrItem({Key? key, required this.attrDTO}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(attrDTO.mainImgThumb),
          Text(attrDTO.mainTitle),
          Text(attrDTO.cntctTel),
        ],
      ),
    );
  }
}
