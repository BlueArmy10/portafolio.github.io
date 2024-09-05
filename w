[1mdiff --git a/project-2/project-3.html b/project-2/project-3.html[m
[1mindex 401d1bc..8533924 100644[m
[1m--- a/project-2/project-3.html[m
[1m+++ b/project-2/project-3.html[m
[36m@@ -1,101 +1,131 @@[m
 <!DOCTYPE html>[m
 <html lang="en">[m
[31m-  <head>[m
[32m+[m
[32m+[m[32m<head>[m
     <meta charset="UTF-8" />[m
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />[m
     <meta name="description" content="Build a Technical Documentation Page" />[m
     <title>Technical Documentation Page</title>[m
[31m-        <link rel="stylesheet" href="styles.css" />[m
[31m-  </head>[m
[32m+[m[32m    <link rel="stylesheet" href="styles.css" />[m
[32m+[m
[32m+[m[32m    <link rel="preconnect" href="https://fonts.googleapis.com">[m
[32m+[m[32m    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>[m
[32m+[m[32m    <link href="https://fonts.googleapis.com/css2?family=Concert+One&family=Nerko+One&display=swap" rel="stylesheet">[m
[32m+[m[32m</head>[m
 [m
[31m-  <body>[m
[31m-        <nav id="navbar">[m
[31m-            <header class="alinear">Documentación para Python</header>[m
[31m-            <ol class="epigrafes separacion">[m
[31m-                <li><a class="nav-link" href="#Introducción_a_Python">Introducción a Python</a></li>[m
[31m-                <li><a class="nav-link" href="#Tipos_de_Datos">Tipos de datos</a></li>[m
[31m-                <li><a class="nav-link" href="#Entrada_y_Salida_por_Terminal">Entrada y salida por terminal</a></li>[m
[31m-                <li><a class="nav-link" href="#Condicionales">Condicionales</a></li>[m
[31m-                <li><a class="nav-link" href="#Bucles">Bucles</a></li>[m
[31m-                <li><a class="nav-link" href="#Listas">Listas</a></li>[m
[31m-            </ol>[m
[31m-        </nav>[m
[31m-        <main id="main-doc">[m
[31m-            <h1>python</h1>[m
[31m-            <section class="main-section" id="Introducción_a_Python">[m
[31m-                <header>Introducción a Python</header>[m
[31m-                <p>Python es un lenguaje de programación de alto nivel multiparadigma que permite:</p>[m
[31m-                <ul>[m
[32m+[m[32m<body>[m
[32m+[m[32m    <nav id="navbar">[m
[32m+[m[32m        <header class="alinear">Documentación para Python</header>[m
[32m+[m[32m        <ol class="epigrafes separacion">[m
[32m+[m[32m            <li><a class="nav-link" href="#Introducción_a_Python">Introducción a Python</a></li>[m
[32m+[m[32m            <li><a class="nav-link" href="#Tipos_de_Datos">Tipos de datos</a></li>[m
[32m+[m[32m            <li><a class="nav-link" href="#Entrada_y_Salida_por_Terminal">Entrada y salida por terminal</a></li>[m
[32m+[m[32m            <li><a class="nav-link" href="#Condicionales">Condicionales</a></li>[m
[32m+[m[32m            <li><a class="nav-link" href="#Bucles">Bucles</a></li>[m
[32m+[m[32m            <li><a class="nav-link" href="#Listas">Listas</a></li>[m
[32m+[m[32m        </ol>[m
[32m+[m[32m    </nav>[m
[32m+[m[32m    <main id="main-doc">[m
[32m+[m[32m        <h1>python</h1>[m
[32m+[m[32m        <section class="main-section" id="Introducción_a_Python">[m
[32m+[m[32m            <header>Introducción a Python</header>[m
[32m+[m[32m            <p>Python es un lenguaje de programación de alto nivel multiparadigma que permite:</p>[m
[32m+[m[32m            <ul>[m
                 <li>Programación imperativa</li>[m
                 <li>Programación funcional</li>[m
                 <li>Programación orientada a objetos</li>[m
[31m-                </ul>[m
[31m-                <p>Fue creado por Guido van Rossum en 1990 aunque actualmente es desarrollado y mantenido por la Python Software Foundation</p>[m
[31m-            </section>[m
[32m+[m[32m            </ul>[m
[32m+[m[32m            <p>Fue creado por Guido van Rossum en 1990 aunque actualmente es desarrollado y mantenido por la Python[m
[32m+[m[32m                Software Foundation</p>[m
[32m+[m[32m        </section>[m
[32m+[m
[32m+[m[32m        <section class="main-section" id="Tipos_de_Datos">[m
[32m+[m[32m            <header>Tipos de Datos</header>[m
[32m+[m[32m            <p>Tipos de datos primitivos simples: </p>[m
[32m+[m[32m            <ul>[m
[32m+[m[32m                <li><span class="bold">Números (numbers): </span>Secuencia de dígitos (pueden incluir el - para[m
[32m+[m[32m                    negativos y el . para decimales) que representan números. <br> <span class="ejemplo"><span[m
[32m+[m[32m                            class="bold">Ejemplo.</span> 0, -1, 3.1415.</span></li>[m
[32m+[m[32m                <li><span class="bold">Cadenas (strings): </span>Secuencia de caracteres alfanuméricos que representan[m
[32m+[m[32m                    texto. Se escriben entre comillas simples o dobles. <br> <span class="ejemplo"><span[m
[32m+[m[32m                            class="bold">Ejemplo.</span> ‘Hola’, “Adiós”.</span></li>[m
[32m+[m[32m                <li><span class="bold">Booleanos (boolean): </span>Contiene únicamente dos elementos <span[m
[32m+[m[32m                        class="bold style">True</span> y <span class="bold style">False</span> que representan los[m
[32m+[m[32m                    valores lógicos verdadero y falso respectivamente.</li>[m
[32m+[m[32m            </ul>[m
[32m+[m[32m            <p>Estos datos son inmutables, es decir, su valor es constante y no puede cambiar.</p>[m
[32m+[m[32m        </section>[m
 [m
[31m-            <section class="main-section" id="Tipos_de_Datos">[m
[31m-                <header>Tipos de Datos</header>[m
[31m-                <p>Tipos de datos primitivos simples: </p>[m
[31m-                <ul>[m
[31m-                    <li><span class="bold">Números (numbers): </span>Secuencia de dígitos (pueden incluir el - para negativos y el . para decimales) que representan números. <br> <span class="ejemplo"><span class="bold">Ejemplo.</span> 0, -1, 3.1415.</span></li>[m
[31m-                    <li><span class="bold">Cadenas (strings): </span>Secuencia de caracteres alfanuméricos que representan texto. Se escriben entre comillas simples o dobles. <br> <span class="ejemplo"><span class="bold">Ejemplo.</span> ‘Hola’, “Adiós”.</span></li>[m
[31m-                    <li><span class="bold">Booleanos (boolean): </span>Contiene únicamente dos elementos <span class="bold style">True</span> y <span class="bold style">False</span> que representan los valores lógicos verdadero y falso respectivamente.</li>[m
[31m-                </ul>[m
[31m-                <p>Estos datos son inmutables, es decir, su valor es constante y no puede cambiar.</p>[m
[31m-            </section>[m
[32m+[m[32m        <section class="main-section" id="Entrada_y_Salida_por_Terminal">[m
[32m+[m[32m            <header>Entrada y Salida por Terminal</header>[m
[32m+[m[32m            <h3>Entrada por terminal (input())</h3>[m
[32m+[m[32m            <p>Para asignar a una variable un valor introducido por el usuario en la consola se utiliza la instrucción[m
[32m+[m[32m                <span class="codigo">input(mensaje) :</span> Muestra la cadena <span class="codigo">mensaje</span> por[m
[32m+[m[32m                la terminal y devuelve una cadena con la entrada del usuario.</p>[m
[32m+[m[32m            <p class="advertencia"><a href="https://goo.su/wKuX" alt="logo de advertencia" id="logo_advertencia"></a> El[m
[32m+[m[32m                valor devuelto siempre es una cadena, incluso si el usuario introduce un dato numérico.</p>[m
 [m
[31m-            <section class="main-section" id="Entrada_y_Salida_por_Terminal">[m
[31m-                <header>Entrada y Salida por Terminal</header>[m
[31m-                <h3>Entrada por terminal (input())</h3>[m
[31m-                <p>Para asignar a una variable un valor introducido por el usuario en la consola se utiliza la instrucción <span class="codigo">input(mensaje) :</span> Muestra la cadena <span class="codigo">mensaje</span> por la terminal y devuelve una cadena con la entrada del usuario.</p>[m
[31m-                <p class="advertencia"><a href="https://goo.su/wKuX" alt="logo de advertencia" id="logo_advertencia"></a> El valor devuelto siempre es una cadena, incluso si el usuario introduce un dato numérico.</p>[m
[31m-        [m
[31m-                <div class="ejemplo_terminal">[m
[31m-                    <code>>>> language = input(<span class="codigo">'¿Cuál es tu lenguaje favorito? '</span>) </code><br>[m
[31m-                    <code>¿Cuál es tu lenguaje favorito? Python</code><br>[m
[31m-                    <code>>>> language</code><br>[m
[31m-                    <code><span class="codigo">'Python'</span></code><br>[m
[31m-                    <code>>>> age = input(<span class="codigo">'¿Cuál es tu edad? '</span>)</code><br>[m
[31m-                    <code>¿Cuál es tu edad? 20</code><br>[m
[31m-                    <code>>>> age</code><br>[m
[31m-                    <code><span class="codigo">'20'</span></code><br>[m
[31m-                </div>[m
[31m-      [m
[31m-                <h3>Salida por terminal (print())</h3>[m
[31m-                <p>Para mostrar un dato por la terminal se utiliza la instrucción <span class="codigo">print(dato1, ..., sep=' ', end='\n', file=sys.stdout)</span>donde</p>[m
[31m-                <ul>[m
[31m-                    <li><span class="codigo">dato1, ... </span>son los datos a imprimir y pueden indicarse tantos como se quieran separados por comas.</li>[m
[31m-                    <li><span class="codigo">sep</span> establece el separador entre los datos, que por defecto es un espacio en blanco ' '.</span></li>[m
[31m-                    <li><span class="codigo">end</span> indica la cadena final de la impresión, que por defecto es un cambio de línea <span class="codigo">\n.</span></li>[m
[31m-                    <li><span class="codigo">file</span> indica la dirección del flujo de salida, que por defecto es la salida estándar sys.stdout.[m
[31m-                </ul>[m
[31m-            </section>[m
[32m+[m[32m            <div class="ejemplo_terminal">[m
[32m+[m[32m                <code>>>> language = input(<span class="codigo">'¿Cuál es tu lenguaje favorito? '</span>) </code><br>[m
[32m+[m[32m                <code>¿Cuál es tu lenguaje favorito? Python</code><br>[m
[32m+[m[32m                <code>>>> language</code><br>[m
[32m+[m[32m                <code><span class="codigo">'Python'</span></code><br>[m
[32m+[m[32m                <code>>>> age = input(<span class="codigo">'¿Cuál es tu edad? '</span>)</code><br>[m
[32m+[m[32m                <code>¿Cuál es tu edad? 20</code><br>[m
[32m+[m[32m                <code>>>> age</code><br>[m
[32m+[m[32m                <code><span class="codigo">'20'</span></code><br>[m
[32m+[m[32m            </div>[m
 [m
[31m-            <section class="main-section" id="Condicionales">[m
[31m-                <header>Condicionales</header>[m
[31m-                <p>Evalúa la expresión lógica condición1 y ejecuta el primer bloque de código si es True; si no, evalúa la siguientes condiciones hasta llegar a la primera que es True y ejecuta el bloque de código asociado. Si ninguna condición es True ejecuta el bloque de código después de else:.</p>[m
[31m-                <p>Pueden aparecer varios bloques elif pero solo uno else al final.</p>[m
[31m-                <p class="advertencia">[m
[31m-                    <a href="https://cdn-icons-png.flaticon.com/512/564/564619.png" alt="logo de advertencia" id="logo_advertencia"></a>[m
[31m-                    Los bloques de código deben estar indentados por 4 espacios.[m
[31m-                </p>[m
[31m-            </section>[m
[32m+[m[32m            <h3>Salida por terminal (print())</h3>[m
[32m+[m[32m            <p>Para mostrar un dato por la terminal se utiliza la instrucción <span class="codigo">print(dato1, ...,[m
[32m+[m[32m                    sep=' ', end='\n', file=sys.stdout)</span>donde</p>[m
[32m+[m[32m            <ul>[m
[32m+[m[32m                <li><span class="codigo">dato1, ... </span>son los datos a imprimir y pueden indicarse tantos como se[m
[32m+[m[32m                    quieran separados por comas.</li>[m
[32m+[m[32m                <li><span class="codigo">sep</span> establece el separador entre los datos, que por defecto es un[m
[32m+[m[32m                    espacio en blanco ' '.</span></li>[m
[32m+[m[32m                <li><span class="codigo">end</span> indica la cadena final de la impresión, que por defecto es un cambio[m
[32m+[m[32m                    de línea <span class="codigo">\n.</span></li>[m
[32m+[m[32m                <li><span class="codigo">file</span> indica la dirección del flujo de salida, que por defecto es la[m
[32m+[m[32m                    salida estándar sys.stdout.[m
[32m+[m[32m            </ul>[m
[32m+[m[32m        </section>[m
 [m
[31m-            <section class="main-section" id="Bucles">[m
[31m-                <header>Bucles</header>[m
[31m-                <h3>Bucles condicionales (<span class="codigo">while</span>)</h3>[m
[31m-                <p>Repite la ejecución del bloque de código mientras la expresión lógica condición sea cierta.</p>[m
[31m-                <p>Se puede interrumpir en cualquier momento la ejecución del bloque de código con la instrucción <span class="codigo">break.</span></p>[m
[31m-                <h3>Bucles interativos (<span class="codigo">for</span>)</h3>[m
[31m-                <p>Repite la ejecución del bloque de código para cada elemento de la secuencia secuencia, asignado dicho elemento a <span class="codigo">i</span> en cada repetición.</p>[m
[31m-                <p>Se puede interrumpir en cualquier momento la ejecución del bloque de código con la instrucción <span class="codigo">break</span> o saltar la ejecución para un determinado elemento de la secuencia con la instrucción <span class="codigo">continue.</span></p>[m
[31m-            </section>[m
[32m+[m[32m        <section class="main-section" id="Condicionales">[m
[32m+[m[32m            <header>Condicionales</header>[m
[32m+[m[32m            <p>Evalúa la expresión lógica if y ejecuta el primer bloque de código si es True; si no, evalúa la[m
[32m+[m[32m                siguientes condiciones hasta llegar a la primera que es True y ejecuta el bloque de código asociado. Si[m
[32m+[m[32m                ninguna condición es True ejecuta el bloque de código después de else:.</p>[m
[32m+[m[32m            <p>Pueden aparecer varios bloques elif pero solo uno else al final.</p>[m
[32m+[m[32m            <p class="advertencia">[m
[32m+[m[32m                <a href="https://cdn-icons-png.flaticon.com/512/564/564619.png" alt="logo de advertencia"[m
[32m+[m[32m                    id="logo_advertencia"></a>[m
[32m+[m[32m                Los bloques de código deben estar indentados por 4 espacios.[m
[32m+[m[32m            </p>[m
[32m+[m[32m        </section>[m
[32m+[m
[32m+[m[32m        <section class="main-section" id="Bucles">[m
[32m+[m[32m            <header>Bucles</header>[m
[32m+[m[32m            <h3>Bucles condicionales (<span class="codigo">while</span>)</h3>[m
[32m+[m[32m            <p>Repite la ejecución del bloque de código mientras la expresión lógica condición sea cierta.</p>[m
[32m+[m[32m            <p>Se puede interrumpir en cualquier momento la ejecución del bloque de código con la instrucción <span[m
[32m+[m[32m                    class="codigo">break.</span></p>[m
[32m+[m[32m            <h3>Bucles interativos (<span class="codigo">for</span>)</h3>[m
[32m+[m[32m            <p>Repite la ejecución del bloque de código para cada elemento de la secuencia secuencia, asignado dicho[m
[32m+[m[32m                elemento a <span class="codigo">i</span> en cada repetición.</p>[m
[32m+[m[32m            <p>Se puede interrumpir en cualquier momento la ejecución del bloque de código con la instrucción <span[m
[32m+[m[32m                    class="codigo">break</span> o saltar la ejecución para un determinado elemento de la secuencia con[m
[32m+[m[32m                la instrucción <span class="codigo">continue.</span></p>[m
[32m+[m[32m        </section>[m
[32m+[m
[32m+[m[32m        <section class="main-section" id="Listas">[m
[32m+[m[32m            <header>Listas</header>[m
[32m+[m[32m            <p>Una lista es una secuencias ordenadas de objetos de distintos tipos.</p>[m
[32m+[m[32m            <p>Se construyen poniendo los elementos entre corchetes <span class="codigo">[ ]</span> separados por comas.[m
[32m+[m[32m            </p>[m
[32m+[m[32m        </section>[m
[32m+[m[32m    </main>[m
 [m
[31m-            <section class="main-section" id="Listas">[m
[31m-                <header>Listas</header>[m
[31m-                <p>Una lista es una secuencias ordenadas de objetos de distintos tipos.</p>[m
[31m-                <p>Se construyen poniendo los elementos entre corchetes <span class="codigo">[ ]</span> separados por comas.</p>[m
[31m-            </section>[m
[31m-        </main>[m
     <body>[m
[31m-</html>[m
[32m+[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
[1mdiff --git a/project-2/styles.css b/project-2/styles.css[m
[1mindex f1e083b..4885973 100644[m
[1m--- a/project-2/styles.css[m
[1m+++ b/project-2/styles.css[m
[36m@@ -1,24 +1,22 @@[m
[31m-header {[m
[31m-[m
[31m-}[m
 body {[m
     background-color: #BCC5D3;[m
[31m-    margin: 40px; [m
[32m+[m[32m    margin: 60px;[m[41m [m
 }[m
   [m
   [m
[31m-h3 {[m
[32m+[m[32mh3, header {[m
     color: #385068;[m
[31m-    font-family: fantasy;[m
[32m+[m[32m    font-family: "Concert One", sans-serif;[m
     letter-spacing: 2px; [m
     font-weight: normal;[m
[32m+[m[32m    margin-right: 0;[m[41m [m
 }[m
[31m-[m
 p, ul, ol{[m
     font-family: sans-serif;[m
     font-size: 15px;[m
     text-align: justify;[m
     line-height: 1.3;[m
[32m+[m[32m    margin-right: 0;[m[41m [m
 }[m
   [m
 .bold {[m
[36m@@ -45,7 +43,9 @@[m [mli {[m
     border: 1px solid black;[m
     border-radius: 10px 10px 10px 10px;;[m
     text-align: left;[m
[32m+[m[32m    padding: 15px;[m
 }[m
[32m+[m
   [m
 #logo_advertencia {[m
     display: inline-block;[m
[36m@@ -95,43 +95,67 @@[m [mcode {[m
 #navbar {[m
     position: fixed;[m
     top: 0;[m
[31m-    left: 0; [m
[31m-    width: 200px; [m
[31m-    height: 100vh; [m
[31m-    background-color: #385068; [m
[32m+[m[32m    left: 0;[m
[32m+[m[32m    width: 250px;[m[41m [m
[32m+[m[32m    height: 100vh;[m
[32m+[m[32m    background-color: #385068;[m
     border: 1px solid black;[m
[31m-    color: #DCDCDE; [m
[31m-    overflow: auto; [m
[31m-    padding: 10px; [m
[31m-    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5); [m
[31m-}[m
[31m-  [m
[31m-.nav-link, ol {[m
     color: #DCDCDE;[m
[31m-    font-size: 15px; [m
[31m-    text-transform: uppercase;[m
[31m-    text-decoration: none;[m
[31m-    text-align: left;[m
[31m-    list-style-type: none;[m
[31m-    display: block;[m
[32m+[m[32m    overflow: auto;[m
[32m+[m[32m    padding: 20px;[m[41m [m
[32m+[m[32m    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    flex-direction: column;[m
[32m+[m[32m    align-items: center;[m[41m [m
[32m+[m[32m    box-sizing: border-box;[m[41m [m
 }[m
 [m
[31m-.nav-link:hover{[m
[31m-    text-decoration: none;[m
[31m-    font-size: 17px;[m
[32m+[m[32m#navbar header {[m
[32m+[m[32m    font-size: 20px;[m
[32m+[m[32m    margin-bottom: 20px;[m
[32m+[m[32m    text-align: center;[m[41m [m
 }[m
[31m-  [m
[32m+[m
[32m+[m
[32m+[m[32mol.separacion {[m
[32m+[m[32m    width: 100%;[m[41m [m
[32m+[m[32m    padding: 0;[m
[32m+[m[32m    margin: 0;[m
[32m+[m[32m    list-style-type: none;[m
[32m+[m[32m    display: flex;[m
[32m+[m[32m    flex-direction: column;[m
[32m+[m[32m    align-items: center;[m[41m [m
[32m+[m[32m}[m
[32m+[m
 .separacion li {[m
[32m+[m[32m    width: 100%;[m
     border-bottom: 1px solid #DCDCDE; [m
[31m-    padding-bottom: 20px;[m
[31m-    padding-top: 20px;[m
[31m-    margin: 0;[m
[32m+[m[32m    padding: 10px 0;[m[41m [m
[32m+[m[32m    text-align: center;[m
[32m+[m[32m    box-sizing: border-box;[m[41m [m
 }[m
[31m-  [m
[32m+[m
 .separacion li:last-child {[m
     border-bottom: none;[m
 }[m
[31m-  [m
[32m+[m
[32m+[m[32m.nav-link {[m
[32m+[m[32m    display: block;[m
[32m+[m[32m    color: #DCDCDE;[m
[32m+[m[32m    font-size: 15px;[m
[32m+[m[32m    text-transform: uppercase;[m
[32m+[m[32m    text-decoration: none;[m
[32m+[m[32m    padding: 10px 0;[m[41m [m
[32m+[m[32m    box-sizing: border-box;[m[41m [m
[32m+[m[32m    width: 100%;[m[41m [m
[32m+[m[32m    text-align: center;[m[41m [m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.nav-link:hover {[m
[32m+[m[32m    text-decoration: none;[m
[32m+[m[32m    font-size: 17px;[m
[32m+[m[32m}[m
[32m+[m
 .alinear {[m
     text-align: center;[m
     font-size: 20px;[m
[36m@@ -139,14 +163,15 @@[m [mcode {[m
   }[m
   [m
 main {[m
[31m-     margin-left: 200px;[m
[32m+[m[32m     margin-left: 250px;[m
[32m+[m
 }[m
   [m
 header {[m
     font-size: 30px;[m
     color: #0A182E;[m
     text-transform: uppercase;[m
[31m-    font-family: fantasy;[m
[32m+[m[32m    font-family: "Concert One", sans-serif;[m
     letter-spacing: 4px; [m
     margin-top: 50px;[m
 }[m
[36m@@ -155,7 +180,7 @@[m [mh1 {[m
     font-size: 70px;[m
     color: white;[m
     text-transform: uppercase;[m
[31m-    font-family: fantasy;[m
[32m+[m[32m    font-family: "Concert One", sans-serif;[m
     letter-spacing: 4px; [m
     text-align: center;[m
      text-shadow: 2px 2px 4px #000000;[m
[1mdiff --git a/project-6/project-3.html b/project-6/project-3.html[m
[1mindex 404f680..7e8532c 100644[m
[1m--- a/project-6/project-3.html[m
[1m+++ b/project-6/project-3.html[m
[36m@@ -38,4 +38,4 @@[m
  	    </main>[m
         <script src="./script.js"></script>[m
     </body>[m
[31m-</html>[m
[32m+[m[32m</html>[m
\ No newline at end of file[m
[1mdiff --git a/project-6/script.js b/project-6/script.js[m
[1mindex f29b431..2ce17b1 100644[m
[1m--- a/project-6/script.js[m
[1m+++ b/project-6/script.js[m
[36m@@ -40,4 +40,4 @@[m [mcheckBtn.addEventListener("click", () => {[m
 clearBtn.addEventListener("click", () => {[m
     userInput.value = ""; [m
     resultsDiv.textContent = ""; [m
[31m-});[m
[32m+[m[32m});[m
\ No newline at end of file[m
[1mdiff --git a/styles.css b/styles.css[m
[1mindex 87dd755..2bbced0 100644[m
[1m--- a/styles.css[m
[1m+++ b/styles.css[m
[36m@@ -91,9 +91,10 @@[m [mh3 {[m
     text-transform: uppercase;[m
     letter-spacing: 1px; [m
     text-align: center;[m
[31m-    font-size: 35px;[m
[32m+[m[32m    font-size: 35px;[m[41m [m
     color: #4e5861;[m
[31m-    margin: 20px 80px;[m
[32m+[m[32m    margin: 20px auto;[m
[32m+[m[32m    width: 90%;[m
 }[m
 [m
 /* Secciones */[m
[36m@@ -130,8 +131,8 @@[m [mh4 {[m
 h4::before {[m
     content: "";[m
     display: block;[m
[31m-    height: 70px; /* Ajusta este valor según la altura de tu barra de navegación */[m
[31m-    margin-top: -70px; /* Este valor debe coincidir con la altura */[m
[32m+[m[32m    height: 70px;[m[41m [m
[32m+[m[32m    margin-top: -70px;[m[41m [m
 }[m
 [m
 h5 {[m
[36m@@ -146,7 +147,9 @@[m [mh5 {[m
     margin-top: 80px;[m
     font-size: 18px;[m
 }[m
[31m-[m
[32m+[m[32m.separador {[m
[32m+[m[32m    color: #b1ccc4;[m
[32m+[m[32m}[m
 /* Listas */[m
 ul {[m
     list-style-type: disc;[m
[36m@@ -158,25 +161,33 @@[m [mli {[m
     padding: 5px;[m
 }[m
 [m
[31m-#habilidades-tecnicas ul {[m
[31m-    list-style-type: none;[m
[31m-    margin-left: 8px;[m
[31m-}[m
[31m-[m
 .minuscula {[m
     text-transform: lowercase;[m
 }[m
 [m
[32m+[m[32m#habilidades-tecnicas h5,  #habilidades-tecnicas p{[m
[32m+[m[32m    margin: 0;[m[41m [m
[32m+[m[32m    padding: 0;[m[41m [m
[32m+[m[32m}[m
 #habilidades-tecnicas h5 {[m
[31m-    margin-top: 5px;[m
[32m+[m[32m    margin-bottom: 10px;[m[41m [m
 }[m
 [m
 #habilidades-tecnicas ul {[m
     column-count: 2; [m
[31m-    column-gap: 50px; [m
[31m-    padding: 10px; [m
[32m+[m[32m    column-gap: 5vw;[m[41m [m
[32m+[m[32m    padding: 0;[m[41m [m
[32m+[m[32m    list-style-type: none;[m
[32m+[m[32m    margin: 0;[m
 }[m
 [m
[32m+[m[32m#habilidades-tecnicas li {[m
[32m+[m[32m    break-inside: avoid;[m[41m [m
[32m+[m[32m    margin-bottom: 20px;[m
[32m+[m[32m    display: flex;[m[41m [m
[32m+[m[32m    flex-direction: column;[m[41m [m
[32m+[m[32m    justify-content: flex-start;[m[41m [m
[32m+[m[32m}[m
 [m
 /* Efectos en hover/focus */[m
 #perfil:hover,[m
[36m@@ -205,8 +216,10 @@[m [mh3:hover {[m
     margin-top: 20px;[m
     background: #ffff;[m
     border-radius: 5px;[m
[31m-    display: inline-block;[m
[31m-    position: relative;[m
[32m+[m[32m    display: block;[m
[32m+[m[32m    max-width: 80%;[m[41m [m
[32m+[m[32m    margin-left: 10vw;[m[41m [m
[32m+[m[32m    margin-right: 10vw;[m[41m [m
     box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);[m
 }[m
 [m
[36m@@ -235,10 +248,14 @@[m [ma {[m
     color: #b1ccc4;[m
 }[m
 [m
[32m+[m[32m#publicaciones  {[m
[32m+[m[32m    text-align: justify;[m
[32m+[m[32m}[m
[32m+[m
 /* Sección de proyectos */[m
 #projects {[m
[31m-    padding-top: 80px; /* Ajusta este valor según la altura de tu barra de navegación */[m
[31m-    margin-top: -80px; /* Compensa el padding para mantener el margen correcto */[m
[32m+[m[32m    padding-top: 80px;[m[41m [m
[32m+[m[32m    margin-top: -80px;[m[41m [m
 }[m
 .projects-section {[m
     padding: 20px;[m
