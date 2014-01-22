part of angular.ui.demo.app;

class Docs {
  final String html;
  String md = 'md';
  final String dart;

  Docs({this.html: 'html', String md: 'md', this.dart: 'dart'}) {
    this.md = markdown.markdownToHtml(md);
  }
}