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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 231, 136, 28)),
      ),
      home: const MyHomePage(title: 'No corn'),
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
  int result = 0;
  var currentModeType = '+';

  void adition(int newNumber, currentModeType) {
    setState(() {
      if (currentModeType == '+') {
        result = result + newNumber;
      }
      else if (currentModeType == 'c') {
        result = 0;
      }
      else if (currentModeType == '-') {
        result = result - newNumber;
      }
      else if (currentModeType == '*') {
        result = result * newNumber;
      }
    else{
        result = result * newNumber;
      }
    });
  }
  void mode(var NewModeType) {
    setState(() { 
      if (NewModeType == 'c') {
        result = 0;
      }
      else{
        currentModeType = NewModeType;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Result: $result',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(8.0),
              crossAxisCount: 3,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    adition(1, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('1', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(2, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('2', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(3, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('3', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(4, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('4', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(5, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('5', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(6, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('6', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(7, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('7', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(8, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('8', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(9, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('9', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    adition(0, currentModeType);
                  },
                  child: Card(
                    child: Center(
                      child: Text('0', style: Theme.of(context).textTheme.headlineLarge),
                    ),
                  ),
                ),
                
                
              ],
            ),
          ),          
          Container(
            // Constrain the height of the GridView
            height: 100,
            child: GridView.count(
                padding: const EdgeInsets.all(8.0),
                crossAxisCount: 5,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      mode('c');
                    },
                    child: Card(
                      child: Center(
                        child: Text('Clear', style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      mode('+');
                    },
                    child: Card(
                      child: Center(
                        child: Text('+', style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      mode('-');
                    },
                    child: Card(
                      child: Center(
                        child: Text('-', style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      mode('*');
                    },
                    child: Card(
                      child: Center(
                        child: Text('*', style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      mode('/');
                    },
                    child: Card(
                      child: Center(
                        child: Text('/', style: Theme.of(context).textTheme.headlineLarge),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
