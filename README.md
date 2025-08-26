# iOS-tema3

## Tema 3: Introducción a SwiftUI

Este proyecto es un ejemplo educativo para mostrar los principales controles y layouts de SwiftUI. Está diseñado para que los alumnos comprendan cómo funcionan y cómo se usan en una app real.

### Controles incluidos
- **Text**: Muestra texto en pantalla.
- **Image**: Muestra imágenes, tanto desde los Assets del proyecto como SF Symbols.
- **Button**: Dispara una acción al presionarse.
- **TextField**: Permite la entrada de texto por el usuario.
- **Toggle**: Interruptor ON/OFF.
- **Slider**: Permite seleccionar un valor dentro de un rango.

### Layouts
- **VStack**: Organiza los controles verticalmente.
- **HStack**: Organiza los controles horizontalmente.
- **ZStack**: Superpone controles uno encima de otro.

### Ejemplo de uso de imagen desde Assets
Para mostrar una imagen propia en SwiftUI:
1. Abre el proyecto en Xcode.
2. Ve a la carpeta `Assets.xcassets`.
3. Haz clic derecho y selecciona "New Image Set".
4. Renombra el set (por ejemplo, `logo`).
5. Arrastra tu imagen (PNG, JPG, etc.) a los recuadros 1x, 2x, 3x.
6. En el código, usa:
   ```swift
   Image("logo")
       .resizable()
       .frame(width: 100, height: 100)
   ```

### Cómo ejecutar el proyecto
1. Clona el repositorio:
   ```sh
   git clone git@github.com:jesus-garza-tecmilenio/iOS-tema3.git
   ```
2. Abre el archivo `Tema3Swift.xcodeproj` en Xcode.
3. Selecciona un simulador y ejecuta la app.

### Notas sobre el .gitignore
El archivo `.gitignore` ya incluye las exclusiones recomendadas para proyectos Xcode y Swift, como carpetas de usuario, builds, dependencias y archivos temporales. No es necesario agregar nada adicional para este tipo de proyecto.
