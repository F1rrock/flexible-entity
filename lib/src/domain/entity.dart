import 'package:flexible_entity/core/pure-fabrication/visit/visitable.dart';
import 'package:flexible_entity/src/types/attribute.dart';
import 'package:flexible_entity/src/types/metadata.dart';
import 'package:flexible_entity/core/information-expert/media.dart';

abstract class Entity implements Media<Metadata>, Visitable<Entity, Media<Metadata>> {
  @override
  Entity accept(Attribute visitor);

  @override
  Metadata get data;
}