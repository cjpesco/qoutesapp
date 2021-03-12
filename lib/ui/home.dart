import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;

  List quotes = [
    "Don't worry about what anybody else is going to do. The best way to predict the future is to invent it.",
    "Premature optimization is the root of all evil (or at least most of it) in programming.",
    "No problem should ever have to be solved twice.",
    "Attitude is no substitute for competence.",
    "It is said that the real winner is the one who lives in today but able to see tomorrow.",
    "Fools ignore complexity. Pragmatists suffer it. Some can avoid it. Geniuses remove it.",
    "A year spent in artificial intelligence is enough to make one believe in God.",
    "Within a computer natural language is unnatural.",
    "A little learning is a dangerous thing.",
    "There really is no learning without doing.",
    "The best way to learn to live with our limitations is to know them.",
    "The programmer must seek both perfection of part and adequacy of collection.",
    "Thus, programs must be written for people to read, and only incidentally for machines to execute.",
    "Lisp programmers know the value of everything but the cost of nothing.",
    "Everything should be made as simple as possible, but no simpler.",
    "When your enemy is making a very serious mistake, don't be impolite and disturb him.",
    "A charlatan makes obscure what is clear; a thinker makes clear what is obscure.",
    "The three chief virtues of a programmer are: Laziness, Impatience and Hubris.",
    "All non-trivial abstractions, to some degree, are leaky.",
    "XML wasn't designed to be edited by humans on a regular basis.",
    "Premature abstraction is an equally grevious sin as premature optimization.",
    "You can have premature generalization as well as premature optimization.",
    "A language that doesn't affect the way you think about programming, is not worth knowing.",
    "Men never do evil so completely and cheerfully as when they do it from religious conviction.",
    "Everybody makes their own fun. If you don't make it yourself, it ain't fun -- it's entertainment.",
    "Omit needless words.",
    "I have never met a man so ignorant that I couldn't learn something from him.",
    "Philosophy: the finding of bad reasons for what one believes by instinct.",
    "Fools! Don't they know that tears are a woman's most effective weapon?",
    "C++ is history repeated as tragedy. Java is history repeated as farce.",
    "Simplicity takes effort-- genius, even.",
    "Show, don't tell.",
    "In God I trust; I will not be afraid. What can mortal man do to me?",
    "Linux is only free if your time has no value.",
    "Code is poetry.",
    "If you choose not to decide, you still have made a choice.",
    "Mistakes were made.",
    "What is truth?",
    "The direct pursuit of happiness is a recipe for an unhappy life."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(14.5)),
                child: Center(
                    child: Text(
                  quotes[_index % quotes.length],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontStyle: FontStyle.italic,
                  ),
                ))),
            SizedBox(
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.greenAccent.shade700,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  'Inspire me',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
