# taxonomy — ejercicio Flutter: counter + drawer de artículos

**Historia**: ejercicio de agosto de 2019 (commit *"first"*, README original: `# drawer`). Dos piezas clásicas de Flutter aprendidas juntas: el counter de stateful (`setState`) y un `Drawer` con una lista de "artículos" — un ejercicio de navegación lateral típico de los tutoriales de la época.

## Estado del revival (2026-10)

- **Migrada a null safety**: constructores `const MyHomePage({super.key, required this.title})`, `runApp(const MyApp())`
- **Dependencia fantasma removida**: `package:splashscreen` estaba declarada e *importada* pero nunca se usaba — fuera
- **`textTheme.display1` → `displayLarge`**: `display1` fue **eliminado** en Flutter 3 (no solo deprecado), el código ni siquiera analizaba
- **🐛 Bug real fixeado**: el `Column` del drawer con 7 artículos de 80px **desbordaba la pantalla** (16px de overflow medido por el test) — ahora va envuelto en `SingleChildScrollView`. En teléfonos chicos el overflow original era visible
- **Widget test REAL**: reemplaza el boilerplate; verifica el counter (0→1→2) y el drawer con sus artículos
- `flutter analyze`: **0 issues** · `flutter test`: **2/2**

## Estructura

```
lib/main.dart   # MyApp + MyHomePage (counter) + MyDrawer (7 artículos, ahora scrolleable)
test/widget_test.dart
```

## Correr

```bash
flutter pub get
flutter analyze
flutter test
```

## Siguiente paso natural

Los artículos podrían salir de un `List<MapEntry<String, String>>` y renderizarse con `ListView.builder` dentro del `SingleChildScrollView` — de 7 bloques manuales a data-driven.

## Licencia

Sin declarar.

## Autor

[FernandoMay](https://github.com/FernandoMay)
