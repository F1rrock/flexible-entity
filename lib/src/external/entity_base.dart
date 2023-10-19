import 'package:flexible_entity/src/domain/entity.dart';
import 'package:flexible_entity/src/types/attribute.dart';
import 'package:flexible_entity/src/types/metadata.dart';
import 'package:flexible_entity/src/types/property.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

@immutable
final class EntityBase implements Entity {
  const EntityBase();

  @override
  Entity accept(Attribute visitor) => visitor.visit(this);

  @override
  Metadata get data => <Property>{};
}
