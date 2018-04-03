import 'dart:io';
import 'package:grinder/grinder.dart';
import 'package:sass/sass.dart';

main(args) => grind(args);

@DefaultTask('Build Scss Files')
sass() {
  var css = compile('lib/scss/bootstrap.scss');
  new File('lib/scss/bootstrap.css').writeAsStringSync(css);
}
