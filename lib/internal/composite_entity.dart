import 'package:flexible_entity/core/information-expert/media.dart';
import 'package:flexible_entity/src/domain/entity.dart';
import 'package:flexible_entity/src/types/attribute.dart';
import 'package:flexible_entity/src/types/metadata.dart';
import 'package:flexible_entity/src/types/property.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

@immutable
class CompositeEntity implements Entity {
  final Media<Metadata> _base;
  final Property _property;

  const CompositeEntity({
    required final Media<Metadata> base,
    required final Property addedProperty,
  })  : _base = base,
        _property = addedProperty;

  @override
  Entity accept(Attribute visitor) => visitor.visit(this);

  @override
  Metadata get data sync* {
    yield* _base.data;
    yield _property;
  }
}
