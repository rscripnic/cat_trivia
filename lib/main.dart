import 'package:cat_trivia/app/model/app_environment.dart';
import 'package:cat_trivia/app/remote_manager/remote_address.dart';
import 'package:cat_trivia/app/runner.dart';
import 'package:cat_trivia/app/utils/platform_manager.dart';

void main() {
  Runner.run(AppEnvironment(
      platformType: PlatformManager.getRunningPlatform(),
      platformSubType: PlatformManager.getRunningSubPlatform(),
      remoteAddresses: RemoteAddress.prodCatFactsAddress));
}
