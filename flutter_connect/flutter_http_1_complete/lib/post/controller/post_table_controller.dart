import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_http_1_complete/post/model/dto/post_dto.dart';
import 'package:flutter_http_1_complete/post/model/repository/post_repository.dart';

class PostTableController extends ChangeNotifier {
  List<PostDTOTable>? _postDTOTableList;

  List<PostDTOTable>? get postDTOTableList => _postDTOTableList;

  void setPostDTOTableList(Function errorHandler) {
    _postDTOTableList = null;
    notifyListeners();
    print("실행");
    PostRepository.instance.getDTOList().then((value) {
      if (value == null) {
        errorHandler();
      } else {
        _postDTOTableList = value;
        notifyListeners();
      }
    });
  }
}
