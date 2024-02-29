// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cat_trivia/presentation/vm/image_vm.dart';

class CatFactVm {
  final String? factTxt;
  final String? createAt;
  late final ImageVm catImageVm;
  Future<void> Function(CatFactVm)? _syncCatImageFunc;

  CatFactVm({
    required this.factTxt,
    required this.createAt,
  }) {
    catImageVm = ImageVm();
  }

  addSyncCatImageFunc(
      Future<void> Function(CatFactVm catFactVm) syncCatImageFunc) {
    _syncCatImageFunc = syncCatImageFunc;
  }

  Future<void> syncImage() async {
    if (catImageVm.synced) {
      return;
    }
    catImageVm.synced = true;
    return _syncCatImageFunc?.call(this);
  }
}
