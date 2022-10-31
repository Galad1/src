///
//  Generated code. Do not modify.
//  source: picking_batch.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class StartPickingBatchOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartPickingBatchOutput', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StartPickingBatchOutput._() : super();
  factory StartPickingBatchOutput() => create();
  factory StartPickingBatchOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartPickingBatchOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartPickingBatchOutput clone() => StartPickingBatchOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartPickingBatchOutput copyWith(void Function(StartPickingBatchOutput) updates) => super.copyWith((message) => updates(message as StartPickingBatchOutput)) as StartPickingBatchOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartPickingBatchOutput create() => StartPickingBatchOutput._();
  StartPickingBatchOutput createEmptyInstance() => create();
  static $pb.PbList<StartPickingBatchOutput> createRepeated() => $pb.PbList<StartPickingBatchOutput>();
  @$core.pragma('dart2js:noInline')
  static StartPickingBatchOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartPickingBatchOutput>(create);
  static StartPickingBatchOutput? _defaultInstance;
}

class LoadPickingBatchesParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadPickingBatchesParameters', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'warehouse')
    ..a<$core.bool>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ShowAll', $pb.PbFieldType.QB, protoName: 'ShowAll')
  ;

  LoadPickingBatchesParameters._() : super();
  factory LoadPickingBatchesParameters({
    $core.String? userID,
    $core.String? warehouse,
    $core.bool? showAll,
  }) {
    final _result = create();
    if (userID != null) {
      _result.userID = userID;
    }
    if (warehouse != null) {
      _result.warehouse = warehouse;
    }
    if (showAll != null) {
      _result.showAll = showAll;
    }
    return _result;
  }
  factory LoadPickingBatchesParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadPickingBatchesParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadPickingBatchesParameters clone() => LoadPickingBatchesParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadPickingBatchesParameters copyWith(void Function(LoadPickingBatchesParameters) updates) => super.copyWith((message) => updates(message as LoadPickingBatchesParameters)) as LoadPickingBatchesParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadPickingBatchesParameters create() => LoadPickingBatchesParameters._();
  LoadPickingBatchesParameters createEmptyInstance() => create();
  static $pb.PbList<LoadPickingBatchesParameters> createRepeated() => $pb.PbList<LoadPickingBatchesParameters>();
  @$core.pragma('dart2js:noInline')
  static LoadPickingBatchesParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadPickingBatchesParameters>(create);
  static LoadPickingBatchesParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get warehouse => $_getSZ(1);
  @$pb.TagNumber(2)
  set warehouse($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWarehouse() => $_has(1);
  @$pb.TagNumber(2)
  void clearWarehouse() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get showAll => $_getBF(2);
  @$pb.TagNumber(3)
  set showAll($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowAll() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowAll() => clearField(3);
}

class LoadPickingBatchDetailsParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadPickingBatchDetailsParameters', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingBatchId', protoName: 'PickingBatchId')
  ;

  LoadPickingBatchDetailsParameters._() : super();
  factory LoadPickingBatchDetailsParameters({
    $core.String? pickingBatchId,
  }) {
    final _result = create();
    if (pickingBatchId != null) {
      _result.pickingBatchId = pickingBatchId;
    }
    return _result;
  }
  factory LoadPickingBatchDetailsParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadPickingBatchDetailsParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadPickingBatchDetailsParameters clone() => LoadPickingBatchDetailsParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadPickingBatchDetailsParameters copyWith(void Function(LoadPickingBatchDetailsParameters) updates) => super.copyWith((message) => updates(message as LoadPickingBatchDetailsParameters)) as LoadPickingBatchDetailsParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadPickingBatchDetailsParameters create() => LoadPickingBatchDetailsParameters._();
  LoadPickingBatchDetailsParameters createEmptyInstance() => create();
  static $pb.PbList<LoadPickingBatchDetailsParameters> createRepeated() => $pb.PbList<LoadPickingBatchDetailsParameters>();
  @$core.pragma('dart2js:noInline')
  static LoadPickingBatchDetailsParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadPickingBatchDetailsParameters>(create);
  static LoadPickingBatchDetailsParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pickingBatchId => $_getSZ(0);
  @$pb.TagNumber(1)
  set pickingBatchId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPickingBatchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPickingBatchId() => clearField(1);
}

class StartPickingBatchParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartPickingBatchParameters', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingBatchId', protoName: 'PickingBatchId')
  ;

  StartPickingBatchParameters._() : super();
  factory StartPickingBatchParameters({
    $core.String? userID,
    $core.String? pickingBatchId,
  }) {
    final _result = create();
    if (userID != null) {
      _result.userID = userID;
    }
    if (pickingBatchId != null) {
      _result.pickingBatchId = pickingBatchId;
    }
    return _result;
  }
  factory StartPickingBatchParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartPickingBatchParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartPickingBatchParameters clone() => StartPickingBatchParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartPickingBatchParameters copyWith(void Function(StartPickingBatchParameters) updates) => super.copyWith((message) => updates(message as StartPickingBatchParameters)) as StartPickingBatchParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartPickingBatchParameters create() => StartPickingBatchParameters._();
  StartPickingBatchParameters createEmptyInstance() => create();
  static $pb.PbList<StartPickingBatchParameters> createRepeated() => $pb.PbList<StartPickingBatchParameters>();
  @$core.pragma('dart2js:noInline')
  static StartPickingBatchParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartPickingBatchParameters>(create);
  static StartPickingBatchParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pickingBatchId => $_getSZ(1);
  @$pb.TagNumber(2)
  set pickingBatchId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPickingBatchId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPickingBatchId() => clearField(2);
}

class ProcessPickingLineParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProcessPickingLineParameters', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingBatchId', protoName: 'PickingBatchId')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingLineId', protoName: 'PickingLineId')
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Item', protoName: 'Item')
    ..aQS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Location', protoName: 'Location')
    ..aQS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Lot', protoName: 'Lot')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Quantity', $pb.PbFieldType.QU3, protoName: 'Quantity')
  ;

  ProcessPickingLineParameters._() : super();
  factory ProcessPickingLineParameters({
    $core.String? pickingBatchId,
    $core.String? pickingLineId,
    $core.String? userID,
    $core.String? item,
    $core.String? location,
    $core.String? lot,
    $core.int? quantity,
  }) {
    final _result = create();
    if (pickingBatchId != null) {
      _result.pickingBatchId = pickingBatchId;
    }
    if (pickingLineId != null) {
      _result.pickingLineId = pickingLineId;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    if (item != null) {
      _result.item = item;
    }
    if (location != null) {
      _result.location = location;
    }
    if (lot != null) {
      _result.lot = lot;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    return _result;
  }
  factory ProcessPickingLineParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessPickingLineParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProcessPickingLineParameters clone() => ProcessPickingLineParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProcessPickingLineParameters copyWith(void Function(ProcessPickingLineParameters) updates) => super.copyWith((message) => updates(message as ProcessPickingLineParameters)) as ProcessPickingLineParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProcessPickingLineParameters create() => ProcessPickingLineParameters._();
  ProcessPickingLineParameters createEmptyInstance() => create();
  static $pb.PbList<ProcessPickingLineParameters> createRepeated() => $pb.PbList<ProcessPickingLineParameters>();
  @$core.pragma('dart2js:noInline')
  static ProcessPickingLineParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProcessPickingLineParameters>(create);
  static ProcessPickingLineParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pickingBatchId => $_getSZ(0);
  @$pb.TagNumber(1)
  set pickingBatchId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPickingBatchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPickingBatchId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pickingLineId => $_getSZ(1);
  @$pb.TagNumber(2)
  set pickingLineId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPickingLineId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPickingLineId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userID => $_getSZ(2);
  @$pb.TagNumber(3)
  set userID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserID() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get item => $_getSZ(3);
  @$pb.TagNumber(4)
  set item($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItem() => $_has(3);
  @$pb.TagNumber(4)
  void clearItem() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get location => $_getSZ(4);
  @$pb.TagNumber(5)
  set location($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lot => $_getSZ(5);
  @$pb.TagNumber(6)
  set lot($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLot() => $_has(5);
  @$pb.TagNumber(6)
  void clearLot() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get quantity => $_getIZ(6);
  @$pb.TagNumber(7)
  set quantity($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuantity() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuantity() => clearField(7);
}

class PickingBatchSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PickingBatchSummary', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingBatchId', protoName: 'PickingBatchId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingBatchType', $pb.PbFieldType.OU3, protoName: 'PickingBatchType')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AssignedTo', protoName: 'AssignedTo')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Warehouse', protoName: 'Warehouse')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Origin', protoName: 'Origin')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ProductionOrder', protoName: 'ProductionOrder')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SalesOrder', protoName: 'SalesOrder')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingStatus', $pb.PbFieldType.OU3, protoName: 'PickingStatus')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ShippingStatus', protoName: 'ShippingStatus')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Customer', protoName: 'Customer')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DeliveryAdress', protoName: 'DeliveryAdress')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PlannedDateFrom', protoName: 'PlannedDateFrom')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PlannedDateTo', protoName: 'PlannedDateTo')
  ;

  PickingBatchSummary._() : super();
  factory PickingBatchSummary({
    $core.String? pickingBatchId,
    $core.int? pickingBatchType,
    $core.String? assignedTo,
    $core.String? warehouse,
    $core.String? origin,
    $core.String? productionOrder,
    $core.String? salesOrder,
    $core.int? pickingStatus,
    $core.String? shippingStatus,
    $core.String? customer,
    $core.String? deliveryAdress,
    $core.String? plannedDateFrom,
    $core.String? plannedDateTo,
  }) {
    final _result = create();
    if (pickingBatchId != null) {
      _result.pickingBatchId = pickingBatchId;
    }
    if (pickingBatchType != null) {
      _result.pickingBatchType = pickingBatchType;
    }
    if (assignedTo != null) {
      _result.assignedTo = assignedTo;
    }
    if (warehouse != null) {
      _result.warehouse = warehouse;
    }
    if (origin != null) {
      _result.origin = origin;
    }
    if (productionOrder != null) {
      _result.productionOrder = productionOrder;
    }
    if (salesOrder != null) {
      _result.salesOrder = salesOrder;
    }
    if (pickingStatus != null) {
      _result.pickingStatus = pickingStatus;
    }
    if (shippingStatus != null) {
      _result.shippingStatus = shippingStatus;
    }
    if (customer != null) {
      _result.customer = customer;
    }
    if (deliveryAdress != null) {
      _result.deliveryAdress = deliveryAdress;
    }
    if (plannedDateFrom != null) {
      _result.plannedDateFrom = plannedDateFrom;
    }
    if (plannedDateTo != null) {
      _result.plannedDateTo = plannedDateTo;
    }
    return _result;
  }
  factory PickingBatchSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PickingBatchSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PickingBatchSummary clone() => PickingBatchSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PickingBatchSummary copyWith(void Function(PickingBatchSummary) updates) => super.copyWith((message) => updates(message as PickingBatchSummary)) as PickingBatchSummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PickingBatchSummary create() => PickingBatchSummary._();
  PickingBatchSummary createEmptyInstance() => create();
  static $pb.PbList<PickingBatchSummary> createRepeated() => $pb.PbList<PickingBatchSummary>();
  @$core.pragma('dart2js:noInline')
  static PickingBatchSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PickingBatchSummary>(create);
  static PickingBatchSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pickingBatchId => $_getSZ(0);
  @$pb.TagNumber(1)
  set pickingBatchId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPickingBatchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPickingBatchId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pickingBatchType => $_getIZ(1);
  @$pb.TagNumber(2)
  set pickingBatchType($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPickingBatchType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPickingBatchType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get assignedTo => $_getSZ(2);
  @$pb.TagNumber(3)
  set assignedTo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssignedTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssignedTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get warehouse => $_getSZ(3);
  @$pb.TagNumber(4)
  set warehouse($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWarehouse() => $_has(3);
  @$pb.TagNumber(4)
  void clearWarehouse() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get origin => $_getSZ(4);
  @$pb.TagNumber(5)
  set origin($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrigin() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrigin() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get productionOrder => $_getSZ(5);
  @$pb.TagNumber(6)
  set productionOrder($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProductionOrder() => $_has(5);
  @$pb.TagNumber(6)
  void clearProductionOrder() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get salesOrder => $_getSZ(6);
  @$pb.TagNumber(7)
  set salesOrder($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSalesOrder() => $_has(6);
  @$pb.TagNumber(7)
  void clearSalesOrder() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get pickingStatus => $_getIZ(7);
  @$pb.TagNumber(8)
  set pickingStatus($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPickingStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearPickingStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get shippingStatus => $_getSZ(8);
  @$pb.TagNumber(9)
  set shippingStatus($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasShippingStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearShippingStatus() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get customer => $_getSZ(9);
  @$pb.TagNumber(10)
  set customer($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCustomer() => $_has(9);
  @$pb.TagNumber(10)
  void clearCustomer() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get deliveryAdress => $_getSZ(10);
  @$pb.TagNumber(11)
  set deliveryAdress($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeliveryAdress() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeliveryAdress() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get plannedDateFrom => $_getSZ(11);
  @$pb.TagNumber(12)
  set plannedDateFrom($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPlannedDateFrom() => $_has(11);
  @$pb.TagNumber(12)
  void clearPlannedDateFrom() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get plannedDateTo => $_getSZ(12);
  @$pb.TagNumber(13)
  set plannedDateTo($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPlannedDateTo() => $_has(12);
  @$pb.TagNumber(13)
  void clearPlannedDateTo() => clearField(13);
}

class PickingBatchDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PickingBatchDetails', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingBatchId', protoName: 'PickingBatchId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingBatchType', $pb.PbFieldType.OU3, protoName: 'PickingBatchType')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AssignedTo', protoName: 'AssignedTo')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Warehouse', protoName: 'Warehouse')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Origin', protoName: 'Origin')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ProductionOrder', protoName: 'ProductionOrder')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SalesOrder', protoName: 'SalesOrder')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PickingStatus', $pb.PbFieldType.OU3, protoName: 'PickingStatus')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ShippingStatus', protoName: 'ShippingStatus')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Customer', protoName: 'Customer')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DeliveryAdress', protoName: 'DeliveryAdress')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PlannedDateFrom', protoName: 'PlannedDateFrom')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PlannedDateTo', protoName: 'PlannedDateTo')
    ..pc<PickingBatchLine>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lines', $pb.PbFieldType.PM, subBuilder: PickingBatchLine.create)
  ;

  PickingBatchDetails._() : super();
  factory PickingBatchDetails({
    $core.String? pickingBatchId,
    $core.int? pickingBatchType,
    $core.String? assignedTo,
    $core.String? warehouse,
    $core.String? origin,
    $core.String? productionOrder,
    $core.String? salesOrder,
    $core.int? pickingStatus,
    $core.String? shippingStatus,
    $core.String? customer,
    $core.String? deliveryAdress,
    $core.String? plannedDateFrom,
    $core.String? plannedDateTo,
    $core.Iterable<PickingBatchLine>? lines,
  }) {
    final _result = create();
    if (pickingBatchId != null) {
      _result.pickingBatchId = pickingBatchId;
    }
    if (pickingBatchType != null) {
      _result.pickingBatchType = pickingBatchType;
    }
    if (assignedTo != null) {
      _result.assignedTo = assignedTo;
    }
    if (warehouse != null) {
      _result.warehouse = warehouse;
    }
    if (origin != null) {
      _result.origin = origin;
    }
    if (productionOrder != null) {
      _result.productionOrder = productionOrder;
    }
    if (salesOrder != null) {
      _result.salesOrder = salesOrder;
    }
    if (pickingStatus != null) {
      _result.pickingStatus = pickingStatus;
    }
    if (shippingStatus != null) {
      _result.shippingStatus = shippingStatus;
    }
    if (customer != null) {
      _result.customer = customer;
    }
    if (deliveryAdress != null) {
      _result.deliveryAdress = deliveryAdress;
    }
    if (plannedDateFrom != null) {
      _result.plannedDateFrom = plannedDateFrom;
    }
    if (plannedDateTo != null) {
      _result.plannedDateTo = plannedDateTo;
    }
    if (lines != null) {
      _result.lines.addAll(lines);
    }
    return _result;
  }
  factory PickingBatchDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PickingBatchDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PickingBatchDetails clone() => PickingBatchDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PickingBatchDetails copyWith(void Function(PickingBatchDetails) updates) => super.copyWith((message) => updates(message as PickingBatchDetails)) as PickingBatchDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PickingBatchDetails create() => PickingBatchDetails._();
  PickingBatchDetails createEmptyInstance() => create();
  static $pb.PbList<PickingBatchDetails> createRepeated() => $pb.PbList<PickingBatchDetails>();
  @$core.pragma('dart2js:noInline')
  static PickingBatchDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PickingBatchDetails>(create);
  static PickingBatchDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pickingBatchId => $_getSZ(0);
  @$pb.TagNumber(1)
  set pickingBatchId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPickingBatchId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPickingBatchId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pickingBatchType => $_getIZ(1);
  @$pb.TagNumber(2)
  set pickingBatchType($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPickingBatchType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPickingBatchType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get assignedTo => $_getSZ(2);
  @$pb.TagNumber(3)
  set assignedTo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssignedTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssignedTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get warehouse => $_getSZ(3);
  @$pb.TagNumber(4)
  set warehouse($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWarehouse() => $_has(3);
  @$pb.TagNumber(4)
  void clearWarehouse() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get origin => $_getSZ(4);
  @$pb.TagNumber(5)
  set origin($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrigin() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrigin() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get productionOrder => $_getSZ(5);
  @$pb.TagNumber(6)
  set productionOrder($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProductionOrder() => $_has(5);
  @$pb.TagNumber(6)
  void clearProductionOrder() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get salesOrder => $_getSZ(6);
  @$pb.TagNumber(7)
  set salesOrder($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSalesOrder() => $_has(6);
  @$pb.TagNumber(7)
  void clearSalesOrder() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get pickingStatus => $_getIZ(7);
  @$pb.TagNumber(8)
  set pickingStatus($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPickingStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearPickingStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get shippingStatus => $_getSZ(8);
  @$pb.TagNumber(9)
  set shippingStatus($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasShippingStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearShippingStatus() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get customer => $_getSZ(9);
  @$pb.TagNumber(10)
  set customer($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCustomer() => $_has(9);
  @$pb.TagNumber(10)
  void clearCustomer() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get deliveryAdress => $_getSZ(10);
  @$pb.TagNumber(11)
  set deliveryAdress($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeliveryAdress() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeliveryAdress() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get plannedDateFrom => $_getSZ(11);
  @$pb.TagNumber(12)
  set plannedDateFrom($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPlannedDateFrom() => $_has(11);
  @$pb.TagNumber(12)
  void clearPlannedDateFrom() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get plannedDateTo => $_getSZ(12);
  @$pb.TagNumber(13)
  set plannedDateTo($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPlannedDateTo() => $_has(12);
  @$pb.TagNumber(13)
  void clearPlannedDateTo() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<PickingBatchLine> get lines => $_getList(13);
}

class PickingBatchLine extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PickingBatchLine', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LineId', protoName: 'LineId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Item', protoName: 'Item')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ItemDescription', protoName: 'ItemDescription')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Lot', protoName: 'Lot')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Location', protoName: 'Location')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Quantity', $pb.PbFieldType.OU3, protoName: 'Quantity')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Unit', protoName: 'Unit')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.OU3, protoName: 'Status')
  ;

  PickingBatchLine._() : super();
  factory PickingBatchLine({
    $core.String? lineId,
    $core.String? item,
    $core.String? itemDescription,
    $core.String? lot,
    $core.String? location,
    $core.int? quantity,
    $core.String? unit,
    $core.int? status,
  }) {
    final _result = create();
    if (lineId != null) {
      _result.lineId = lineId;
    }
    if (item != null) {
      _result.item = item;
    }
    if (itemDescription != null) {
      _result.itemDescription = itemDescription;
    }
    if (lot != null) {
      _result.lot = lot;
    }
    if (location != null) {
      _result.location = location;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory PickingBatchLine.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PickingBatchLine.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PickingBatchLine clone() => PickingBatchLine()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PickingBatchLine copyWith(void Function(PickingBatchLine) updates) => super.copyWith((message) => updates(message as PickingBatchLine)) as PickingBatchLine; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PickingBatchLine create() => PickingBatchLine._();
  PickingBatchLine createEmptyInstance() => create();
  static $pb.PbList<PickingBatchLine> createRepeated() => $pb.PbList<PickingBatchLine>();
  @$core.pragma('dart2js:noInline')
  static PickingBatchLine getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PickingBatchLine>(create);
  static PickingBatchLine? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lineId => $_getSZ(0);
  @$pb.TagNumber(1)
  set lineId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLineId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLineId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get item => $_getSZ(1);
  @$pb.TagNumber(2)
  set item($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearItem() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemDescription($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lot => $_getSZ(3);
  @$pb.TagNumber(4)
  set lot($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLot() => $_has(3);
  @$pb.TagNumber(4)
  void clearLot() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get location => $_getSZ(4);
  @$pb.TagNumber(5)
  set location($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get quantity => $_getIZ(5);
  @$pb.TagNumber(6)
  set quantity($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasQuantity() => $_has(5);
  @$pb.TagNumber(6)
  void clearQuantity() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get unit => $_getSZ(6);
  @$pb.TagNumber(7)
  set unit($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUnit() => $_has(6);
  @$pb.TagNumber(7)
  void clearUnit() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get status => $_getIZ(7);
  @$pb.TagNumber(8)
  set status($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => clearField(8);
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Result', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Result._() : super();
  factory Result() => create();
  factory Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Result clone() => Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result)) as Result; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Result create() => Result._();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  @$core.pragma('dart2js:noInline')
  static Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Result>(create);
  static Result? _defaultInstance;
}

