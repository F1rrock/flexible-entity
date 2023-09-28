import 'visitor.dart';

abstract class Visitable<Type, Param> {
  Type accept(Visitor<Type, Param> visitor);
}