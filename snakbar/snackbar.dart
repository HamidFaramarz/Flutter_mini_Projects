ElevatedButton(
              //example one
              onPressed: () {
                final snakbar = SnackBar(
                  content: const Text("Hi i am snakbar"),
                  backgroundColor: (Colors.black45),
                  elevation: 1,
                );
                ScaffoldMessenger.of(context).showSnackBar(snakbar);
              },
              child: const Text("Click Me!")),
          ElevatedButton(
              //example two
              onPressed: () {
                final snk = SnackBar(
                  content: const Text('My name is sankbar'),
                  backgroundColor: Colors.cyanAccent,
                );
                ScaffoldMessenger.of(context).showSnackBar(snk);
              },
              child: Text("Show Snakbar")),
          ElevatedButton(
            //example three
            onPressed: () {
              final snkbar2 = SnackBar(
                content: Text("this is snakbar"),
                backgroundColor: Colors.red,
                action: SnackBarAction(label: "Dissmis", onPressed: () {}),
              );
              ScaffoldMessenger.of(context).showSnackBar(snkbar2);
            },
            child: Icon(
              Icons.show_chart,
              size: 30,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                final snkk = SnackBar(content: Text("My name is snak man"));
                ScaffoldMessenger.of(context).showSnackBar(snkk);
              },
              child: Text("show Snak"))
