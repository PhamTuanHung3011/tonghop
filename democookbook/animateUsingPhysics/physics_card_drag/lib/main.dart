import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PhysicsCardDragDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhysicsCardDragDemo Title'),
      ),
      body: DraggableCard(),
    );
  }
}

class DraggableCard extends StatefulWidget {
  late Widget child;
  @override
  State<DraggableCard> createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard>
  with SingleTickerProviderStateMixin {
  late Animation<Alignment> _animation;
  late AnimationController _controller;
  Alignment _dragAlignment  = Alignment.center;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller.addListener(() {
      setState(() {
        _dragAlignment =
      });});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        child: Card(
          child: widget.child,
          var size = MediaQuery.of(context).size,
          return GestureDetector(
            onPanDown: (detail) {},
            onPanUpdate: (detail) {
              setState(() {
                _dragAlignment += Alignment(
                detail.delta.dx / (size.width)/2,
                    detail.delta.dy / (size.height)/2);
              };)
            },
        )
        ));
  }
}
