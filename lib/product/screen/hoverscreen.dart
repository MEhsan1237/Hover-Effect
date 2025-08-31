import 'package:flutter/material.dart';

class HoverEffectScreen extends StatefulWidget {
  final String title;
  final String imagePath;
  final IconData icon;
  final String description;

  const HoverEffectScreen({
    super.key,
    required this.title,
    required this.imagePath,
    required this.icon,
    required this.description,
  });

  @override
  State<HoverEffectScreen> createState() => _HoverEffectScreenState();
}

class _HoverEffectScreenState extends State<HoverEffectScreen> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter:
          (event) => setState(() {
            _isHovered = true;
          }),
      onExit:
          (event) => setState(() {
            _isHovered = false;
          }),

      child: AnimatedContainer(
        margin: EdgeInsets.all(10),
        height: 180,
        width: 250,
        duration: Duration(milliseconds: 200),
        transform: _isHovered
            ? Matrix4.translationValues(0, -6, 0) // 🔹 thoda upar lift
            : Matrix4.identity(),
        decoration: BoxDecoration(


          color: _isHovered ? Colors.red : Colors.red.shade300,
          borderRadius:
              _isHovered
                  ? BorderRadius.circular(20)
                  : BorderRadius.circular(40),
          boxShadow: [
            _isHovered
                ? BoxShadow(
                  color: Colors.black87,
                  spreadRadius: 3,
                  blurRadius: 3,
                )
                : BoxShadow(color: Colors.black26),
          ],
        ),

        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text(widget.title), Icon(widget.icon)]),
            CircleAvatar(
                      backgroundImage: AssetImage(widget.imagePath,),radius: 50,
            ),
            SizedBox(height: 10),
            Text(widget.description,textAlign: TextAlign.center,),
            SizedBox(height: 3),
          ],
        ),
      ),
    );
  }
}
