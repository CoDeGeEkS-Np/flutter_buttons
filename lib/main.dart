import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> _isSelected = [false, true, false];
  List<bool> _isSelected2= [false, true, false];
  var isSelected1= false;
  var icon = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //FlatButton
        FlatButton(
          textColor: Color(0xFF6200EE),
          onPressed: () {
            // Respond to button press
          },
          child: Text("FLAT BUTTON"),
        ),

//FLAT BUTTON WITH ICON
        FlatButton.icon(
          textColor: Color(0xFF6200EE),
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.add, size: 18),
          label: Text("FLAT BUTTON WITH ICON"),
        ),
//OUTLINED BUTTON
        OutlineButton(
          textColor: Color(0xFF6200EE),
          highlightedBorderColor: Colors.black.withOpacity(0.12),
          onPressed: () {
            // Respond to button press
          },
          child: Text("OUTLINED BUTTON"),
        ),

//OUTLINED BUTTON WITH ICON
        OutlineButton.icon(
          textColor: Color(0xFF6200EE),
          highlightedBorderColor: Colors.black.withOpacity(0.12),
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.add, size: 18),
          label: Text("OUTLINED BUTTON WITH ICON"),
        ),
//RaisedButton
        RaisedButton(
          textColor: Colors.white,
          color: Color(0xFF6200EE),
          onPressed: () {
            // Respond to button press
          },
          child: Text('CONTAINED BUTTON'),
        ),
//RaisedButton With Icon
        RaisedButton.icon(
          textColor: Colors.white,
          color: Color(0xFF6200EE),
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.add, size: 18),
          label: Text("CONTAINED BUTTON"),
        ),

        SizedBox(height: 20,),

//ToogleButton
        Material(
          child: ToggleButtons(
            color: Colors.black.withOpacity(0.60),
            selectedColor: Color(0xFF6200EE),
            selectedBorderColor: Color(0xFF6200EE),
            fillColor: Color(0xFF6200EE).withOpacity(0.08),
            splashColor: Color(0xFF6200EE).withOpacity(0.12),
            hoverColor: Color(0xFF6200EE).withOpacity(0.04),
            borderRadius: BorderRadius.circular(4.0),
            constraints: BoxConstraints(minHeight: 36.0),
            isSelected: _isSelected,
            onPressed: (index) {
              // Respond to button selection
              setState(() {
                _isSelected[index] = !_isSelected[index];
              });
            },
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('BUTTON 1'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('BUTTON 2'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('BUTTON 3'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),


        Material(
          child: ToggleButtons(
            color: Colors.black.withOpacity(0.60),
            selectedColor: Color(0xFF6200EE),
            selectedBorderColor: Color(0xFF6200EE),
            fillColor: Color(0xFF6200EE).withOpacity(0.08),
            splashColor: Color(0xFF6200EE).withOpacity(0.12),
            hoverColor: Color(0xFF6200EE).withOpacity(0.04),
            borderRadius: BorderRadius.circular(4.0),
            isSelected: _isSelected2,
            onPressed: (index) {
              // Respond to button selection
              setState(() {
                _isSelected2[index] = !_isSelected2[index];
              });
            },
            children: [
              Icon(Icons.favorite),
              Icon(Icons.visibility),
              Icon(Icons.notifications),
            ],
          ),
        ),
SizedBox(height: 20,),
//IconButton
        Material(
          child: IconButton(
            icon: Icon(icon),
            color: Colors.blue,
            onPressed: () {
              // Respond to icon toggle
              setState(() {
                isSelected1 = !isSelected1;
                icon = isSelected1 ? Icons.favorite : Icons.favorite_border;
              });
            },
          ),
        )















      ],
    );
  }
}

