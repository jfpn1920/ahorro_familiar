<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:007ACC,100:5DADE2&height=260&section=header&text=Ahorro%20familiar&desc=Bienvenidos%20usuarios%20a%20mi%20proyecto&fontSize=43&fontColor=ffffff&descSize=18&fontAlignY=38&descAlignY=58&animation=fadeIn"/>

<p align="justify">Este proyecto, llamado <b>ahorro familiar</b>, fue desarrollado en <b>pseint</b> como un ejercicio práctico para fortalecer la lógica de programación mediante la creación de un sistema de gestión de ahorros familiares desde la consola. El programa cuenta con un menú principal de siete opciones que permite <b>registrar, editar, eliminar, buscar, listar y consultar los detalles</b> de los ahorros registrados. Cada ahorro almacena datos como el identificador, el integrante, la fecha, el monto, la categoría, el método, la descripción y el estado, utilizando arreglos con una capacidad de <b>100 posiciones durante la ejecución</b>. Durante su desarrollo se aplicaron conceptos fundamentales de programación, como variables, arreglos, estructuras condicionales, ciclos repetitivos y estructuras de selección, además de procesos para registrar, buscar y mostrar información. Este proyecto permite poner en práctica los conocimientos adquiridos en PSeInt y sirve como base para desarrollar sistemas de gestión más avanzados utilizando otros lenguajes y tecnologías.</p>

<h2 align="center">⚙️ Funcionamiento del menú principal</h2>

### ➕ Registrar ahorro

<p align="justify">La opción <b>1) registrar ahorro</b> permite añadir un nuevo ahorro familiar. El programa asigna automáticamente un <b>id</b> mediante la variable <b>siguienteID</b>, que aumenta en uno con cada registro, y lo muestra en pantalla. Después, solicita el <b>nombre del integrante, la fecha, el monto, la categoría, el método, la descripción y el estado</b>, y guarda cada dato en la posición correspondiente de sus arreglos (<b>totalAhorros + 1</b>). Finalmente, la variable <b>totalAhorros</b> aumenta en uno y se muestra el mensaje <b>"ahorro registrado correctamente."</b>.</p>

### ✏️ Editar ahorro

<p align="justify">La opción <b>2) editar ahorro</b> está pensada para modificar un ahorro registrado. Primero, el programa comprueba si <b>totalAhorros</b> es igual a cero; si no hay registros, muestra el mensaje <b>"no hay ahorros registrados."</b>. En caso contrario, lista los ahorros con su id, integrante, fecha, monto, categoría y estado, y solicita el <b>id</b> del ahorro que se desea editar. Actualmente, esta opción se encuentra en <b>desarrollo</b>: guarda el id introducido y muestra el mensaje <b>"función de edición disponible."</b>, pero todavía no modifica los datos almacenados.</p>

### 🗑️ Eliminar ahorro

<p align="justify">La opción <b>3) eliminar ahorro</b> está pensada para eliminar un ahorro registrado. El programa comprueba si existen ahorros; si la lista está vacía, muestra el mensaje <b>"no hay ahorros registrados."</b>. Si hay registros, los presenta en una lista y solicita el <b>id</b> del ahorro que se desea eliminar. Actualmente, esta opción se encuentra en <b>desarrollo</b>: guarda el id introducido y muestra el mensaje <b>"función de eliminación disponible."</b>, pero todavía no elimina ni reorganiza los registros.</p>

### 🔎 Buscar ahorro

<p align="justify">La opción <b>4) buscar ahorro</b> permite localizar un ahorro mediante su <b>id</b>. Primero, el programa comprueba si existen ahorros registrados. Si no hay, muestra el mensaje <b>"no hay ahorros familiares registrados."</b>. En caso contrario, inicializa la variable lógica <b>encontrado</b> con el valor <b>falso</b> y solicita el id. Un ciclo <b>para</b> recorre el arreglo <b>id</b> y compara cada valor con <b>idBuscar</b>. Cuando encuentra una coincidencia, cambia <b>encontrado</b> a <b>verdadero</b> y muestra en una sola línea el id, integrante, fecha, monto, categoría, método, descripción y estado. Si termina el recorrido sin coincidencias, presenta el mensaje <b>"no se encontró un ahorro familiar con ese id."</b>.</p>

### 📋 Listar ahorros

<p align="justify">La opción <b>5) listar ahorros</b> permite visualizar todos los ahorros registrados. Si <b>totalAhorros</b> es igual a cero, muestra el mensaje <b>"no hay ahorros registrados."</b>. En caso contrario, utiliza un ciclo <b>para</b> que recorre los arreglos desde la primera posición hasta el total de ahorros y muestra, en una línea por registro, el <b>id, integrante, fecha, monto, categoría y estado</b>. Esta función facilita consultar los registros existentes sin necesidad de buscar cada ahorro individualmente.</p>

### 📄 Ver detalles del ahorro

<p align="justify">La opción <b>6) ver detalles del ahorro</b> permite consultar todos los datos de un ahorro específico. Primero, comprueba si existen ahorros registrados; si no hay, muestra el mensaje <b>"no hay ahorros familiares registrados."</b>. Después, solicita el <b>id</b> y recorre el arreglo <b>id</b> en busca de una coincidencia. Si la encuentra, muestra cada dato en su propia línea: <b>id, integrante, fecha, monto, categoría, método, descripción y estado</b>. Si no existe un ahorro con ese id, presenta el mensaje <b>"no se encontró un ahorro familiar con ese id."</b>.</p>

### 🚪 Salir del menú principal

<p align="justify">La opción <b>7) salir</b> finaliza la ejecución del programa y muestra el mensaje <b>"gracias por utilizar ahorro familiar."</b>. El menú principal se encuentra dentro de una estructura repetitiva <b>repetir ... hasta que</b>, cuya condición de salida es <b>opcion = 7</b>, por lo que el menú se mantiene activo hasta que el usuario selecciona la opción de salida.</p>

<h2 align="center">🧠 Temas aplicados en el proyecto</h2>

### 📦 Variables

<p align="justify">En este proyecto se utilizan variables para guardar la opción seleccionada en el menú, controlar la cantidad de ahorros registrados, generar los identificadores, recorrer los arreglos, almacenar el id que se desea buscar y comprobar si se encontró una coincidencia. Cada variable cumple una función específica dentro de las operaciones de gestión de ahorros.</p>

🔢 **Opcion:** Almacena la opción seleccionada por el usuario en el menú principal.

📊 **TotalAhorros:** Almacena la cantidad actual de ahorros registrados.

🆔 **SiguienteID:** Almacena el próximo identificador que se asignará a un nuevo ahorro.

🔄 **I:** Funciona como contador en los ciclos <b>para</b> que recorren los arreglos.

🔎 **IdBuscar:** Almacena el id introducido por el usuario para buscar o seleccionar un ahorro.

✅ **Encontrado:** Variable lógica que indica si se encontró un ahorro con el id solicitado.

### 🗃️ Arreglos

<p align="justify">En este proyecto se utilizan ocho arreglos relacionados con los datos de cada ahorro. Cada arreglo tiene una capacidad de <b>100 posiciones</b> y utiliza el mismo índice para representar la información correspondiente a un mismo ahorro. Por ejemplo, los datos de un ahorro almacenado en la posición <b>1</b> se encuentran distribuidos entre <b>id[1], integrante[1], fecha[1], monto[1], categoria[1], metodo[1], descripcion[1] y estado[1]</b>. Esta organización permite recorrer, buscar y mostrar los ahorros de manera ordenada.</p>

🆔 **Id[100]:** Almacena el identificador único de cada ahorro.

👨‍👩‍👧 **Integrante[100]:** Almacena el nombre del integrante de la familia que realizó el ahorro.

📅 **Fecha[100]:** Almacena la fecha del ahorro.

💰 **Monto[100]:** Almacena el valor ahorrado.

🏷️ **Categoria[100]:** Almacena la categoría del ahorro.

💳 **Metodo[100]:** Almacena el método utilizado para ahorrar.

📝 **Descripcion[100]:** Almacena una descripción del ahorro.

📌 **Estado[100]:** Almacena el estado del ahorro.

### 🔀 Estructuras condicionales

<p align="justify">En este proyecto se utilizan las estructuras <b>si</b> y <b>sino</b> para comprobar si existen ahorros registrados antes de editar, eliminar, buscar, listar o consultar detalles, y para determinar si se encontró el id buscado. Estas condiciones permiten que el programa responda de manera diferente según el estado de los registros y el resultado de cada operación.</p>

### 🔄 Estructuras repetitivas

<p align="justify">En este proyecto se utilizan los ciclos <b>para</b> y <b>repetir ... hasta que</b>. Los ciclos <b>para</b> permiten recorrer los arreglos para mostrar los ahorros y buscar ids. Por otro lado, el ciclo <b>repetir ... hasta que</b> mantiene activo el menú principal para que el usuario pueda ejecutar diferentes operaciones antes de salir del programa.</p>

### 🎯 Estructura según

<p align="justify">El programa evalúa el valor almacenado en la variable <b>opcion</b> y ejecuta el bloque de instrucciones correspondiente. Cada caso representa una operación específica del sistema: <b>registrar, editar, eliminar, buscar, listar, ver detalles o salir</b>. También se utiliza el bloque <b>de otro modo</b> para mostrar el mensaje <b>"opción no válida."</b> cuando el valor introducido no coincide con ninguna de las opciones definidas.</p>

### 🔢 Dimensionamiento de arreglos

<p align="justify">El programa utiliza la instrucción <b>dimension</b> para establecer la capacidad de los arreglos que almacenan la información de los ahorros. Se definieron <b>100 posiciones</b> para cada arreglo. La cantidad de posiciones ocupadas se controla mediante la variable <b>totalAhorros</b>, por lo que las operaciones recorren únicamente los registros comprendidos entre la primera posición y el total actual de ahorros.</p>

### 🆔 Generación automática de identificadores

<p align="justify">Cada vez que se registra un ahorro, el programa asigna el valor actual de <b>siguienteID</b> al arreglo <b>id</b> y luego lo aumenta en uno. De esta manera, cada ahorro tiene un identificador único que se utiliza para buscarlo y consultar sus detalles.</p>

<h2 align="center">¿Cómo se implementaron las operaciones crud en el proyecto?</h2>

<p align="justify">Las operaciones <b>crud</b> se implementaron mediante las opciones del menú principal. La operación <b>crear</b> corresponde a <b>registrar ahorro</b>, donde se introducen los datos de un nuevo ahorro; <b>leer</b> se realiza mediante las opciones <b>buscar ahorro, listar ahorros y ver detalles del ahorro</b>. Las operaciones <b>actualizar</b> y <b>eliminar</b> cuentan con su opción en el menú, la lista de registros y la selección por id, pero se encuentran <b>en desarrollo</b>, ya que todavía no modifican ni eliminan los datos almacenados. La información se guarda de forma temporal durante la ejecución del programa.</p>

<h2 align="center">Diagrama de flujo del proyecto</h2>

<img src="./ahorro_familiar.png" alt="diagrama de flujo de ahorro familiar" width="100%">

<h2 align="center">🛡️ Validaciones del programa</h2>

### 📭 No existen ahorros registrados

<p align="justify">Esta validación se utiliza en las opciones de <b>editar, eliminar, buscar, listar y ver detalles</b>. El programa comprueba si la variable <b>totalAhorros</b> es igual a <b>0</b> y, si no existen ahorros registrados, muestra el mensaje <b>"no hay ahorros registrados."</b> (o <b>"no hay ahorros familiares registrados."</b> en buscar y ver detalles). Esta comprobación evita continuar con operaciones que necesitan información almacenada cuando no hay registros.</p>

### ❌ Ahorro no encontrado

<p align="justify">Esta validación se utiliza en las opciones de buscar y ver detalles. El programa inicializa la variable lógica <b>encontrado</b> con el valor <b>falso</b> y recorre el arreglo <b>id</b> para comparar cada valor con el id introducido. Cuando encuentra una coincidencia, cambia la variable a <b>verdadero</b> y muestra la información. Si al finalizar el recorrido <b>encontrado</b> continúa siendo <b>falso</b>, muestra el mensaje <b>"no se encontró un ahorro familiar con ese id."</b>.</p>

### ⚠️ Opción no válida

<p align="justify">La estructura <b>segun</b> incluye el bloque <b>de otro modo</b>, que muestra el mensaje <b>"opción no válida."</b> cuando el usuario introduce un número que no corresponde a ninguna de las opciones definidas en el menú.</p>

<h2 align="center">🚧 Mejoras pendientes</h2>

<p align="justify">Como parte de la evolución del proyecto, se identificaron las siguientes mejoras para versiones futuras:</p>

- ✏️ Implementar la modificación real de los datos en la opción **editar ahorro**.
- 🗑️ Implementar la eliminación y reorganización de registros en la opción **eliminar ahorro**.
- ⚠️ Validar que <b>totalAhorros</b> no supere la capacidad de <b>100</b> posiciones antes de registrar un nuevo ahorro.
- 💰 Definir el tipo de dato de cada arreglo (por ejemplo, <b>monto</b> como número real) para poder realizar cálculos.
- 📊 Agregar totales de ahorro por integrante o por categoría.

<h2 align="center">🎯 Objetivo del proyecto</h2>

<p align="justify">El objetivo principal de este proyecto es fortalecer la <b>lógica de programación</b> mediante el desarrollo de un sistema de gestión de ahorros familiares en <b>pseint</b>. A través de su construcción se busca aplicar los conocimientos adquiridos sobre variables, arreglos, estructuras condicionales, ciclos repetitivos y estructuras de selección, integrándolos para resolver un problema de manera organizada. Además, el proyecto permite comprender cómo registrar y consultar información en una aplicación de consola, estableciendo una base para desarrollar sistemas de gestión más completos con otros lenguajes y tecnologías.</p>

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:007ACC,100:5DADE2&height=110&section=footer&text=%C2%A9%202026%20%7C%20L%C3%B3gica%20de%20programaci%C3%B3n%20hecha%20en%20pseint%20%7C%20ahorro%20familiar&fontSize=14&fontColor=FFFFFF&fontAlignY=87.5"/>