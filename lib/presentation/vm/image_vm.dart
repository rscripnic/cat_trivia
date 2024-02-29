import 'dart:typed_data';

class ImageVm {
  Uint8List? image;

  late bool inProgress;
  late bool synced;

  ImageVm({this.inProgress = false, this.synced = false});
}
