import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 4, 231, 98)),
      ),
      home: const MyHomePage(title: 'Control de Herramientas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor:Theme.of(context).colorScheme.inversePrimary,
       centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight:FontWeight.bold,
            )
            ),
      ),


      body: Center(
        
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Selecciona una Opcion',
            style: TextStyle(color: Color.fromARGB(255, 246, 243, 243), fontSize:25),
            ),
           

          const SizedBox(height:20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 85, 187, 241),
            ),

            onPressed: (){
                debugPrint('¡Hiciste clic en el botón!');
            },
            child: const Text('Herramienta Medicion',
            style: TextStyle(color: Colors.black, fontSize:16, fontWeight:FontWeight.bold, ),
            ),
            ),


const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 236, 201, 4),
              foregroundColor: const Color.fromARGB(255, 8, 8, 8), 
            ),

            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Herramienta Manual'),
                    content: const Text('En construccion!!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Cierra el cuadro de diálogo
                        },
                        child: const Text('Aceptar'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Herramienta Manual',
            style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),),
          ),



          const SizedBox(height:20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 4, 231, 98), 
              foregroundColor: Colors.black,
            ),
            onPressed:(){
           debugPrint('Consultando!');
            },
            child: const Text('Herramienta Electrica', style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),
            ),
            ),

          ],
        ),
      ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('¡Bienvenido!'),
                content: const Text('¡Bienvenido al sistema de control de inventario de herramientas!'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); 
                    },
                    child: const Text('Aceptar'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.waving_hand),
      ),




      backgroundColor: const Color.fromARGB(255, 68, 87, 94),

    );
  }
}
