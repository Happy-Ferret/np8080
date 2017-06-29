import 'package:angular2/core.dart';
import 'package:np8080/storage/localstorage.dart';

@Injectable()
class ThemeService {

  final String _SelectedThemeKey = 'SelectedTheme';

  String get theme {
    return _theme;
  }

  set theme(String newTheme) {
    _theme = newTheme;
    storeValue(_SelectedThemeKey, newTheme);
  }

  String _theme = 'default';

  String getMainClass() {
    return _theme + '-theme-1';
  }

  String getSecondaryClass() {
    return _theme + '-theme-2';
  }

  String getDocumentClass() {
    return _theme + '-document';
  }

  void load() {
    _theme = loadValue(_SelectedThemeKey, 'default');
  }

}