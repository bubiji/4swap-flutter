import 'package:drift/drift.dart';

import '../../../../db/mixin_database.dart';

part 'assets_extra_dao.g.dart';

@DriftAccessor(tables: [AssetsExtra])
class AssetsExtraDao extends DatabaseAccessor<MixinDatabase>
    with _$AssetsExtraDaoMixin {
  AssetsExtraDao(MixinDatabase db) : super(db);

  Future<int> updateHidden(String assetId, {required bool hidden}) =>
      into(db.assetsExtra).insertOnConflictUpdate(
          AssetsExtraData(assetId: assetId, hidden: hidden));
}
