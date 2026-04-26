import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/slide.dart';
import '../data/slides_data.dart';
import '../widgets/slide_layouts.dart';

class PresentationViewer extends StatefulWidget {
  const PresentationViewer({Key? key}) : super(key: key);

  @override
  State<PresentationViewer> createState() => _PresentationViewerState();
}

class _PresentationViewerState extends State<PresentationViewer> {
  int _currentIndex = 0;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _nextSlide() {
    if (_currentIndex < presentationSlides.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _previousSlide() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  void _handleKeyEvent(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.arrowRight ||
          event.logicalKey == LogicalKeyboardKey.space) {
        _nextSlide();
      } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        _previousSlide();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final slide = presentationSlides[_currentIndex];
    
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: _handleKeyEvent,
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Stack(
                  children: [
                    // Main slide content
                    SlideWidget(slide: slide),
                    
                    // Invisible tap areas for navigation
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: _previousSlide,
                            behavior: HitTestBehavior.translucent,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: _nextSlide,
                            behavior: HitTestBehavior.translucent,
                          ),
                        ),
                      ],
                    ),

                    // Controls and Progress (Hover visible or subtle)
                    Positioned(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${_currentIndex + 1} / ${presentationSlides.length}',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.chevron_left),
                                color: _currentIndex > 0 
                                    ? Colors.grey.shade400 
                                    : Colors.transparent,
                                onPressed: _previousSlide,
                              ),
                              IconButton(
                                icon: const Icon(Icons.chevron_right),
                                color: _currentIndex < presentationSlides.length - 1 
                                    ? Colors.grey.shade400 
                                    : Colors.transparent,
                                onPressed: _nextSlide,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
