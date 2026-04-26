import 'package:flutter/material.dart';
import '../models/slide.dart';

class SlideWidget extends StatelessWidget {
  final Slide slide;

  const SlideWidget({Key? key, required this.slide}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (slide.layout != SlideLayout.title) _buildHeader(context),
          Expanded(
            child: _buildBody(context),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          slide.title,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: const Color(0xFF003366),
                fontWeight: FontWeight.bold,
              ),
        ),
        if (slide.subtitle != null) ...[
          const SizedBox(height: 8),
          Text(
            slide.subtitle!,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ],
        const SizedBox(height: 16),
        Container(
          height: 4,
          width: 80,
          color: const Color(0xFFE31837), // Bajaj red
        ),
        const SizedBox(height: 48),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    switch (slide.layout) {
      case SlideLayout.title:
        return _buildTitleLayout(context);
      case SlideLayout.sectionHeader:
        return _buildSectionHeaderLayout(context);
      case SlideLayout.content:
        return _buildContentLayout(context);
      case SlideLayout.split:
        return _buildSplitLayout(context);
      case SlideLayout.swot:
        return _buildSwotLayout(context);
      case SlideLayout.conclusion:
        return _buildConclusionLayout(context);
    }
  }

  Widget _buildTitleLayout(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE31837), width: 3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'INTERNSHIP PRESENTATION',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: const Color(0xFFE31837),
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(height: 48),
          Text(
            slide.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: const Color(0xFF003366),
                  fontWeight: FontWeight.w900,
                ),
          ),
          const SizedBox(height: 32),
          if (slide.subtitle != null)
            Text(
              slide.subtitle!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.grey.shade800,
                  ),
            ),
        ],
      ),
    );
  }

  Widget _buildSectionHeaderLayout(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (slide.primaryText != null)
            Text(
              slide.primaryText!,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.grey.shade800,
                    height: 1.5,
                  ),
            ),
          if (slide.secondaryText != null) ...[
            const SizedBox(height: 32),
            Text(
              slide.secondaryText!,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.grey.shade600,
                    height: 1.5,
                  ),
            ),
          ]
        ],
      ),
    );
  }

  Widget _buildContentLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (slide.primaryText != null) ...[
            Text(
              slide.primaryText!,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 24),
          ],
          if (slide.bulletPoints != null)
            ...slide.bulletPoints!.map((point) => Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '• ',
                        style: TextStyle(fontSize: 28, color: Color(0xFFE31837)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            point,
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.grey.shade800,
                                  height: 1.4,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
        ],
      ),
    );
  }

  Widget _buildSplitLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (slide.primaryText != null)
                Text(
                  slide.primaryText!,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: const Color(0xFF003366),
                        fontWeight: FontWeight.w600,
                      ),
                ),
              if (slide.secondaryText != null) ...[
                const SizedBox(height: 24),
                Text(
                  slide.secondaryText!,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.grey.shade800,
                        height: 1.4,
                      ),
                ),
              ]
            ],
          ),
        ),
        const SizedBox(width: 48),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (slide.bulletPoints != null)
                ...slide.bulletPoints!.map((point) => Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '• ',
                            style: TextStyle(fontSize: 28, color: Color(0xFFE31837)),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                point,
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                      color: Colors.grey.shade800,
                                      height: 1.4,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSwotLayout(BuildContext context) {
    final swot = slide.swotData;
    if (swot == null) return const SizedBox.shrink();

    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              _buildSwotQuadrant(context, 'Strengths', swot['Strengths'] ?? [], Colors.green.shade50, Colors.green.shade800),
              const SizedBox(width: 24),
              _buildSwotQuadrant(context, 'Weaknesses', swot['Weaknesses'] ?? [], Colors.red.shade50, Colors.red.shade800),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: Row(
            children: [
              _buildSwotQuadrant(context, 'Opportunities', swot['Opportunities'] ?? [], Colors.blue.shade50, Colors.blue.shade800),
              const SizedBox(width: 24),
              _buildSwotQuadrant(context, 'Threats', swot['Threats'] ?? [], Colors.orange.shade50, Colors.orange.shade800),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSwotQuadrant(BuildContext context, String title, List<String> points, Color bgColor, Color textColor) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: textColor.withOpacity(0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            ...points.map((p) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ', style: TextStyle(color: textColor, fontSize: 20)),
                      Expanded(
                        child: Text(
                          p,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: Colors.black87,
                              ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildConclusionLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (slide.primaryText != null)
          Text(
            slide.primaryText!,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: const Color(0xFF003366),
                  fontWeight: FontWeight.bold,
                ),
          ),
        const SizedBox(height: 24),
        if (slide.bulletPoints != null)
          ...slide.bulletPoints!.map((point) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '✓ ',
                      style: TextStyle(fontSize: 28, color: Colors.green),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          point,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.grey.shade800,
                                height: 1.4,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
      ],
    );
  }
}
