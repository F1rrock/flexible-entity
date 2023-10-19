import 'package:flexible_entity/core/information-expert/media.dart';
import 'package:flexible_entity/internal/composite_entity.dart';
import 'package:flexible_entity/src/domain/entity.dart';
import 'package:flexible_entity/src/types/attribute.dart';
import 'package:flexible_entity/src/types/metadata.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

@immutable
final class FlexibleAttribute implements Attribute {
  final Type _type;
  final dynamic _value;

  const FlexibleAttribute({
    required final Type type,
    required final dynamic value,
  })  : _type = type,
        _value = value;

  @override
  Entity visit(Media<Metadata> param) => CompositeEntity(
        base: param,
        addedProperty: (
          type: _type,
          value: _value,
        ),
      );
}
