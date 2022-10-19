import 'package:done/flavor_config.dart';
import 'package:done/main_common.dart';

void main() {
  FlavorConfigDTO flavorConfigDTO =
      FlavorConfigDTO(appName: 'Yandex-Todo Dev', flavor: 'dev');

  mainCommon(flavorConfigDTO);
}
