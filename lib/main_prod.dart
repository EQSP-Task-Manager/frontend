import 'package:done/flavor_config.dart';
import 'package:done/main_common.dart';

void main() {
  FlavorConfigDTO flavorConfigDTO =
      FlavorConfigDTO(appName: 'Yandex-Todo Prod', flavor: 'prod');

  mainCommon(flavorConfigDTO);
}
