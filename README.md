# draftea_pokemon_challenge

App Flutter (Pokédex) con **BLoC**, **Retrofit/Dio**, **Freezed/JsonSerializable** y soporte **online/offline**.

## Requisitos

- **FVM** instalado (`fvm`)
- **Flutter 3.35.1** (vía FVM)
- (iOS) Xcode + CocoaPods

## Setup inicial

Instalar la versión de Flutter y descargar dependencias:

```bash
fvm install 3.35.1
fvm use 3.35.1
fvm global 3.35.1

make get
```

## Variables de entorno (`--dart-define-from-file`)

La app lee estos `dart-define`:

- **`APP_ENV`**: ambiente (ej: `development`, `production`, `mock`)
- **`BASE_URL`**: base URL de la API (ej: `https://pokeapi.co/api/v2/`)

Los `launch` de VSCode esperan estos archivos (no están versionados):

- `.env/appDev.json`
- `.env/appDevWeb.json`

Ejemplo mínimo de `.env/appDev.json`:

```json
{
  "APP_ENV": "development",
  "BASE_URL": "https://pokeapi.co/api/v2/"
}
```

> Si cambiás nombres/paths, actualizá también `.vscode/launch.json`.

## Generación de código (build_runner)

Este proyecto usa `build_runner` para generar:

- `freezed` (`*.freezed.dart`)
- `json_serializable` (`*.g.dart`)
- `retrofit` (`*_service.g.dart`)
- `injectable` (`injection.config.dart`)

Para regenerar:

```bash
make gen
```

## Ejecutar la app

Hay **2 launches** configurados en `.vscode/launch.json`:

### Mobile (development)

Desde VSCode: **draftea Pokemon Challenge Dev mobile**

O por consola:

```bash
fvm flutter run \
  -t lib/main/main_dev.dart \
  --flavor development \
  --dart-define-from-file=.env/appDev.json
```

### Web (development)

Desde VSCode: **draftea Pokemon Challenge Dev web**

O por consola:

```bash
fvm flutter run \
  -t lib/main/main_dev.dart \
  -d chrome \
  --web-port 5000 \
  --dart-define-from-file=.env/appDevWeb.json
```

## Comandos útiles

- **Get packages**: `make get`
- **Clean**: `make clean`
- **Generar código**: `make gen`

## Arquitectura y escalabilidad

Este proyecto usa **Clean Architecture** (por feature) + **BLoC/Cubit** para el estado. Es un enfoque adecuado para escalar a un producto real (incluyendo **Web**) porque separa responsabilidades, reduce acoplamiento y permite evolucionar UI, reglas de negocio e infraestructura de forma independiente.

### Estructura por feature (Clean Architecture)

Ejemplos: `lib/features/pokedex/pokemon_list/` y `lib/features/pokedex/pokemon_details/`.

- **`presentation/`**
  - UI + estado de pantalla (BLoC/Cubit): `.../presentation/cubit/`, `.../presentation/view/`, `.../presentation/widget/`
  - Mantiene la UI reactiva y testeable (estados explícitos).
- **`domain/`**
  - Modelos de dominio (`freezed`) + casos de uso: `.../domain/model/`, `.../domain/usecase/`
  - Define **interfaces** de repositorios: `.../domain/repository/`
  - No depende de Flutter ni de librerías de networking (ideal para escalar/testear).
- **`data/`**
  - Implementaciones concretas: datasources remotos/locales, DTOs (`json_serializable`), mappers, services (Retrofit/Dio) y repos: `.../data/...`
  - El mapeo **DTO → Domain** evita filtrar detalles de la API hacia el dominio/UI.

### Cross-cutting / infraestructura

- **Networking**: `dio` + `retrofit` en `lib/core/networking/` (interceptors, base repository/datasource).
- **DI (Dependency Injection)**: `get_it` + `injectable` en `lib/di/` (facilita reemplazar implementaciones, mockear, y modularizar).
- **Configuración por ambiente**: `APP_ENV`/`BASE_URL` en `lib/core/env/`.
- **Offline (fallback)**: cache con `shared_preferences` en datasources locales (`..._local_datasource.dart`) y lógica de fallback en repositorios.
- **Responsive/Web**: layouts adaptativos en UI (mobile vs desktop/tablet) sin mezclar lógica de negocio; la misma capa domain/data funciona igual en Web.

### Principios y prácticas (por qué escala)

- **Patrones de diseño utilizados**

  - **Singleton**: servicios/instancias únicas registradas con `injectable` (por ejemplo, services `@singleton` en `.../data/service/` y módulos en `lib/core/networking/*` / `lib/di/*`).
  - **Factory Method / Abstract Factory**: Retrofit genera implementaciones concretas a partir de interfaces (ej: `factory PokemonDetailsService(Dio dio) = _PokemonDetailsService;`), permitiendo sustituir implementaciones sin tocar consumidores.
  - **Repository Pattern**: el dominio define interfaces (`.../domain/repository/`) y `data` provee implementaciones (`.../data/repository/*_repository_impl.dart`), aislando la UI de la fuente de datos.
  - **Data Source Pattern (Remote/Local)**: separación explícita entre acceso remoto (`.../data/datasource/*_datasource.dart`) y cache local (`.../data/datasource/*_local_datasource.dart`).
  - **Adapter / Mapper**: DTOs de API (`.../data/dto/*`) se adaptan al dominio vía mappers (`.../data/mapper/*_dto_to_model.dart`) para no acoplarse al contrato externo.
  - **Template Method**: flujo común de requests/errores centralizado en `lib/core/networking/base_repository.dart` (y/o `base_datasource.dart`), reutilizado por repositorios.
  - **Observer / Reactive State**: `BlocBuilder/BlocListener` reaccionan a cambios de estado (BLoC/Cubit) en `presentation/`.
  - **Dependency Injection**: `get_it` + `injectable` desacopla la construcción de objetos (permite test/mocks y crecimiento modular).

- **SOLID**
  - **S**: UI, estado, casos de uso, repos y datasources con responsabilidades separadas.
  - **O**: agregar una nueva fuente (ej. cache más avanzada) sin tocar la UI (nuevas implementaciones de repos/datasource).
  - **L/I**: UI depende de abstracciones (repositorios en domain), y las interfaces se mantienen pequeñas y enfocadas.
  - **D**: dependencias invertidas con DI (`injectable/get_it`), desacoplando módulos.
- **DRY**: base classes en `core/networking/` (p.ej. `BaseRepository`, `BaseDataSource`) para reutilizar manejo de errores/requests.
- **YAGNI**: features separadas pero simples; se evita sobre-ingeniería (ej. no se introduce persistencia compleja si `shared_preferences` alcanza).
- **Separación de concerns**: “renderizar” (UI) no sabe “cómo se trae” (data) ni “qué significa” (domain).

### Cómo agregar una feature nueva (patrón de escalado)

1. Crear carpeta `lib/features/<feature>/` con `data/`, `domain/`, `presentation/`.
2. Definir **repo interface** + **usecase** en `domain/`.
3. Implementar repo/datasources + DTO/mappers en `data/`.
4. Exponer dependencias con `injectable` y regenerar: `make gen`.
5. Conectar UI con Cubit/BLoC en `presentation/`.

## Trade-offs (timebox 1 día)

Por el límite de tiempo, prioricé entregar **funcionalidad end-to-end** y una **UX sólida** por encima de un set completo de **tests automatizados**.

- **Más funcionalidades, menos tests**
  - Se priorizó implementar: listado + paginación/infinite scroll, detalle, responsive (mobile/desktop), soporte Web, y modo offline (fallback).
  - Quedó pendiente reforzar: **tests unitarios** (usecases/mappers/repos), **tests de widget** (pantallas principales) y, si aplica, integración.
- **Persistencia simple**
  - Se eligió `shared_preferences` como cache por rapidez de implementación y bajo overhead.
  - En una iteración siguiente, migraría a una solución más robusta (p.ej. DB local) para cache paginada/expirable y queries.
- **Observabilidad y calidad**
  - Se dejó lo mínimo necesario de logging/handling de errores.
  - A futuro: métricas, trazas, crash reporting, y una estrategia más completa de errores/reintentos.
- **CI/CD y linters estrictos**
  - Se priorizó que compile y corra en los targets (mobile/web) antes que configurar pipelines, coverage y gates.

## Gestión de estado y side-effects

### Flujo UI → estado → datos (end-to-end)

- **UI (Widgets)**
  - Renderiza en base a un **estado inmutable** (ej. `BlocBuilder`).
  - Dispara **intenciones del usuario** (tap, scroll, retry) llamando métodos del Cubit/BLoC (ej. `getPokemonList()`, `loadMore()`, `getPokemonDetails()`).
- **Estado (Cubit/BLoC)**
  - Orquesta el caso de uso y emite estados (`loading/loaded/error`) usando `copyWith`.
  - No conoce HTTP/Retrofit/SharedPreferences directamente: solo invoca **usecases**.
- **Usecase (Domain)**
  - Encapsula una acción de negocio (ej. “obtener lista”, “obtener detalle”) y delega al repositorio (interfaz).
- **Repository (Domain interface / Data impl)**
  - El **dominio** define la interfaz (`.../domain/repository/`).
  - `data` implementa la interfaz (`.../data/repository/*_repository_impl.dart`) y decide de dónde obtener la data (remote/local), además de aplicar fallback offline.
- **DataSources (Data)**
  - **Remote**: Retrofit/Dio (`.../data/service/` + `.../data/datasource/`) realiza la request.
  - **Local**: `shared_preferences` (`.../data/datasource/*_local_datasource.dart`) persiste/lee cache.
  - DTOs (`json_serializable`) se mapean a modelos de dominio (`freezed`) vía mappers.

### ¿Dónde viven los side-effects?

- **Networking / IO**: en `data` (services/datasources/repos). La UI no hace requests ni parsea JSON.
- **Persistencia (cache)**: en datasources locales + repos (decisión de fallback).
- **Mensajes/errores UI**: se muestran desde la capa presentation (ej. `BlocListener` para snackbars), evitando mezclar “render” con “efectos”.
- **Conectividad**: un BLoC de infraestructura (`core/connectivity`) expone el estado de red; la UI solo reacciona (ej. banner “sin internet”).

### Cómo evitamos acoplamiento entre capas

- **Dependencias unidireccionales**: `presentation → domain → data` (y no al revés).
- **Interfaces en domain**: la UI depende de abstracciones (repositorios/usecases), no de implementaciones concretas.
- **DI con get_it/injectable**: composición en un solo lugar, permitiendo cambiar implementaciones (remote/local/mock) sin tocar consumidores.
- **DTO ≠ Domain**: el contrato externo (PokeAPI) se aísla en DTOs/mappers; el dominio se mantiene estable aunque cambie la API.
- **Estados explícitos e inmutables**: reduce efectos colaterales y hace más predecible la UI (especialmente en Web/Responsive).

## Offline y caché

### Estrategia de persistencia (qué guardo)

Se persiste una representación en **JSON** de los **modelos de dominio** (no los DTOs):

- **Listado**: `PokemonListModel` completo (incluye `results`) en `shared_preferences`
  - Key: `pokedex.pokemon_list.cache.v1`
- **Detalle**: `PokemonDetailsModel` por Pokémon (clave por `idOrName`)
  - Key: `pokedex.pokemon_details.cache.v1.<idOrName>`

Esto permite que la UI siga funcionando offline mostrando datos ya consultados previamente.

### Cuándo leo cache vs remoto

- **Caso normal (online)**: se intenta **remoto siempre**; si la respuesta es exitosa, se actualiza cache.
- **Errores “recuperables”**: si falla la request por:
  - **sin status code** (problema de red), o
  - **status >= 500** (problema del servidor),
    entonces se intenta devolver **cache** (si existe).
- **Errores no recuperables (4xx)**: no se usa cache como fallback (se devuelve error).

### Paginación offline (evitar duplicados)

Cuando se está haciendo `loadMore` (offset > 0) y ocurre un error recuperable:

- Se devuelve una “página vacía” (sin `results`) para señalizar “no hay más” en offline.
- La UI/cubit lo interpreta como fin de lista y evita duplicar ítems.

### Versionado e invalidación

- **Versionado por key**: las keys incluyen sufijo `v1`.
  - Si cambia el esquema del modelo/cache, se incrementa a `v2` y se fuerza invalidación natural.
- **Invalidación/expiración (trade-off)**: actualmente **no** hay TTL ni timestamp (decisión por timebox).
  - En una iteración siguiente: guardaría `{ data, cachedAt, schemaVersion }` y aplicaría TTL, además de una estrategia de “stale-while-revalidate”.

### Conflictos “dato cacheado” vs “dato remoto”

En este caso no hay edición local (no hay “source of truth” local con writes), por lo que:

- **Remote-wins**: si el remoto responde OK, ese dato reemplaza/actualiza el cache.
- **Cache solo como fallback**: se usa únicamente cuando el remoto falla con errores recuperables.

## Flutter Web

### Decisiones para que la experiencia en Web sea buena

- **Responsive real (mobile vs desktop)**: en pantallas chicas se navega de lista → detalle; en pantallas grandes se muestra **lista + detalle** al mismo tiempo (más cómodo con mouse/teclado).
- **Navegación clara**: se usan rutas para que moverse entre pantallas sea consistente y “web-friendly”.
- **Interacción tipo desktop**: en layout grande se puede seleccionar un ítem del listado y ver el detalle sin perder el contexto (estilo master-detail).
- **Performance**: el listado no carga todo de golpe (paginación/infinite scroll) y las imágenes se cargan de forma progresiva y se reutilizan (cache) para mantener fluidez.
- **Offline como mejora de UX**: si la red falla o el servidor responde mal, la app intenta mostrar lo último persistido.

### Limitaciones (actuales o esperables) y cómo mitigarlas

- **Rendimiento variable según navegador/máquina**: reducir animaciones pesadas, optimizar imágenes y evitar reconstrucciones innecesarias.
- **Trabajo pesado sin trabar la UI**: si hay llamadas muy pesadas (por ejemplo, parseos grandes, procesamiento de datos/imagenes) se puede mover ese trabajo a “otro hilo” (isolates) para mantener la app fluida; y cuidar que las animaciones no bloqueen el render.
- **Caché simple**: para un producto real, sumar expiración (TTL), versionado más explícito y una estrategia de “mostrar rápido lo guardado y actualizar en segundo plano”.
- **Deep links / refresh del navegador**: asegurar rutas bien definidas y estados que se puedan reconstruir desde la URL (por ejemplo, abrir un Pokémon directo por link).
- **Diferencias de interacción entre plataformas**: testear en varios navegadores y ajustar detalles de scroll, foco/teclado y navegación para desktop.

## Calidad (código limpio)

Tres decisiones puntuales que apliqué para mantener el código entendible y fácil de crecer:

- **Un solo lugar para el manejo de errores**

  - En vez de repetir try/catch en cada feature, el flujo común está centralizado en `lib/core/networking/base_repository.dart`.
  - Ejemplo: `PokemonListRepositoryImpl` y `PokemonDetailsRepositoryImpl` usan `executeDataSource(...)` y se enfocan en la lógica de negocio (cache/fallback), no en “cómo atrapar errores”.

- **Separar “lo que viene de la API” de “lo que usa la app”**

  - Los DTOs viven en `.../data/dto/` y el modelo de la app vive en `.../domain/model/`.
  - Ejemplo: `lib/features/pokedex/pokemon_details/data/dto/pokemon_details_response_dto.dart` se transforma a dominio con `lib/features/pokedex/pokemon_details/data/mapper/pokemon_details_dto_to_model.dart`.
  - Beneficio: si cambia la API, normalmente solo tocás DTO/mapper y la UI no se rompe.

- **Estado simple y predecible**

  - El estado de cada pantalla es un objeto claro (cargando / cargado / error), para que la UI sea fácil de seguir.
  - Ejemplo: `lib/features/pokedex/pokemon_list/presentation/cubit/pokemon_list_state.dart` (estado inmutable con `freezed`).

- **Nombres explícitos (código “autoexplicativo”)** (Yapa)
  - Se intentó usar nombres claros en clases y métodos para que se entiendan sin comentarios extra.
  - Ejemplo: métodos como `getPokemonList()`, `loadMore()` y `getPokemonDetails()` describen exactamente qué hacen.

## Testing

Por el **timebox de 1 día** (mencionado en _Trade-offs_), se priorizó construir funcionalidades completas y dejar el testing como siguiente paso.

### ¿Qué se testeó y por qué?

- **No se llegaron a agregar tests** por falta de tiempo.
- Aun así, se buscó que el código quede “testeable” (capas separadas, dependencias por inyección, estados claros), para que sumar tests después sea directo.

### ¿Qué tests agregaría primero (prioridad) y qué asegurarían?

1. **Unit tests (primero)**

   - Aseguran que la lógica “chiquita pero importante” funciona.
   - Ejemplos:
     - Mappers (que el DTO se transforme bien al modelo de la app).
     - Repositorios (que use remoto y haga fallback a cache cuando corresponde).
     - Cubits/usecases (que emitan estados correctos en éxito/error).

2. **Integration tests (después)**

   - Aseguran que las piezas se conectan bien “de punta a punta” (API → parseo → cache → UI/estado).
   - Ejemplos:
     - Flujo de paginación (online/offline) sin duplicados.
     - Detalle leyendo remoto y luego funcionando con cache.

3. **Automatización (al final)**
   - Asegura recorridos completos como lo haría un usuario.
   - Ejemplos:
     - Abrir la app, scrollear, abrir un Pokémon, volver, y repetir.
     - Validar que en desktop el master-detail responda bien.

## Git

### ¿Cómo estructuré los commits (granularidad, mensajes, convención)?

- **Commits chicos y enfocados**: la idea fue que cada commit cambie una cosa puntual (o un conjunto pequeño) para que el review sea más fácil y el historial más útil.
- **Mensajes explicativos**: se buscó que el mensaje cuente “qué cambió” y “para qué”, sin necesidad de abrir todo el diff para entenderlo.
- **Convención con prefijo**: en algunos casos se usó un prefijo seguido de `:` para indicar intención, por ejemplo:
  - `refactor: ...`
  - (podría extenderse a `feat:`, `fix:`, `chore:`, etc.)

### Mejora sugerida

- **Husky (pre-commit / pre-push)**: se podría sumar para correr automático format/lints y (cuando existan) tests, evitando que entren errores al repo y manteniendo consistencia.

## Pendientes (top 3–5)

Lista priorizada de cosas que dejé fuera por el timebox y cómo las encararía:

1. **Tests (unit + integración + automatización)**

   - Empezaría por unit tests de mappers/repos/cubits, luego integración para los flujos principales (lista/paginación/detalle/online-offline) y al final automatización tipo “recorrido de usuario”.

2. **Husky para checks automáticos**

   - Agregaría hooks `pre-commit`/`pre-push` para correr formato, lints y (cuando existan) tests, así evitamos errores “tontos” y mantenemos consistencia.

3. **Mejoras de performance**

   - Aunque ya se usan `Slivers`, revisaría rebuilds innecesarios, optimizaría carga de imágenes, y movería trabajo pesado a “otro hilo” cuando aplique. También mediría con profiling en Web.

4. **Internacionalización (l10n)**

   - Extraería textos a ARB y agregaría soporte multi-idioma con `flutter_localizations`, dejando inglés/español como base.

5. **Monitoreo (crashes y métricas)**
   - Integraría herramientas como Crashlytics y Analytics (y/o un SDK tipo New Relic) para tener visibilidad real: errores, performance y uso, especialmente en Web.
