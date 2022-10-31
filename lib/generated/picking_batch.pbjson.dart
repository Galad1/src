///
//  Generated code. Do not modify.
//  source: picking_batch.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use startPickingBatchOutputDescriptor instead')
const StartPickingBatchOutput$json = const {
  '1': 'StartPickingBatchOutput',
};

/// Descriptor for `StartPickingBatchOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startPickingBatchOutputDescriptor = $convert.base64Decode('ChdTdGFydFBpY2tpbmdCYXRjaE91dHB1dA==');
@$core.Deprecated('Use loadPickingBatchesParametersDescriptor instead')
const LoadPickingBatchesParameters$json = const {
  '1': 'LoadPickingBatchesParameters',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 2, '5': 9, '10': 'UserID'},
    const {'1': 'warehouse', '3': 2, '4': 2, '5': 9, '10': 'warehouse'},
    const {'1': 'ShowAll', '3': 3, '4': 2, '5': 8, '10': 'ShowAll'},
  ],
};

/// Descriptor for `LoadPickingBatchesParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadPickingBatchesParametersDescriptor = $convert.base64Decode('ChxMb2FkUGlja2luZ0JhdGNoZXNQYXJhbWV0ZXJzEhYKBlVzZXJJRBgBIAIoCVIGVXNlcklEEhwKCXdhcmVob3VzZRgCIAIoCVIJd2FyZWhvdXNlEhgKB1Nob3dBbGwYAyACKAhSB1Nob3dBbGw=');
@$core.Deprecated('Use loadPickingBatchDetailsParametersDescriptor instead')
const LoadPickingBatchDetailsParameters$json = const {
  '1': 'LoadPickingBatchDetailsParameters',
  '2': const [
    const {'1': 'PickingBatchId', '3': 1, '4': 2, '5': 9, '10': 'PickingBatchId'},
  ],
};

/// Descriptor for `LoadPickingBatchDetailsParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadPickingBatchDetailsParametersDescriptor = $convert.base64Decode('CiFMb2FkUGlja2luZ0JhdGNoRGV0YWlsc1BhcmFtZXRlcnMSJgoOUGlja2luZ0JhdGNoSWQYASACKAlSDlBpY2tpbmdCYXRjaElk');
@$core.Deprecated('Use startPickingBatchParametersDescriptor instead')
const StartPickingBatchParameters$json = const {
  '1': 'StartPickingBatchParameters',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 2, '5': 9, '10': 'UserID'},
    const {'1': 'PickingBatchId', '3': 2, '4': 2, '5': 9, '10': 'PickingBatchId'},
  ],
};

/// Descriptor for `StartPickingBatchParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startPickingBatchParametersDescriptor = $convert.base64Decode('ChtTdGFydFBpY2tpbmdCYXRjaFBhcmFtZXRlcnMSFgoGVXNlcklEGAEgAigJUgZVc2VySUQSJgoOUGlja2luZ0JhdGNoSWQYAiACKAlSDlBpY2tpbmdCYXRjaElk');
@$core.Deprecated('Use processPickingLineParametersDescriptor instead')
const ProcessPickingLineParameters$json = const {
  '1': 'ProcessPickingLineParameters',
  '2': const [
    const {'1': 'PickingBatchId', '3': 1, '4': 2, '5': 9, '10': 'PickingBatchId'},
    const {'1': 'PickingLineId', '3': 2, '4': 2, '5': 9, '10': 'PickingLineId'},
    const {'1': 'UserID', '3': 3, '4': 2, '5': 9, '10': 'UserID'},
    const {'1': 'Item', '3': 4, '4': 2, '5': 9, '10': 'Item'},
    const {'1': 'Location', '3': 5, '4': 2, '5': 9, '10': 'Location'},
    const {'1': 'Lot', '3': 6, '4': 2, '5': 9, '10': 'Lot'},
    const {'1': 'Quantity', '3': 7, '4': 2, '5': 13, '10': 'Quantity'},
  ],
};

/// Descriptor for `ProcessPickingLineParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List processPickingLineParametersDescriptor = $convert.base64Decode('ChxQcm9jZXNzUGlja2luZ0xpbmVQYXJhbWV0ZXJzEiYKDlBpY2tpbmdCYXRjaElkGAEgAigJUg5QaWNraW5nQmF0Y2hJZBIkCg1QaWNraW5nTGluZUlkGAIgAigJUg1QaWNraW5nTGluZUlkEhYKBlVzZXJJRBgDIAIoCVIGVXNlcklEEhIKBEl0ZW0YBCACKAlSBEl0ZW0SGgoITG9jYXRpb24YBSACKAlSCExvY2F0aW9uEhAKA0xvdBgGIAIoCVIDTG90EhoKCFF1YW50aXR5GAcgAigNUghRdWFudGl0eQ==');
@$core.Deprecated('Use pickingBatchSummaryDescriptor instead')
const PickingBatchSummary$json = const {
  '1': 'PickingBatchSummary',
  '2': const [
    const {'1': 'PickingBatchId', '3': 1, '4': 2, '5': 9, '10': 'PickingBatchId'},
    const {'1': 'PickingBatchType', '3': 2, '4': 1, '5': 13, '10': 'PickingBatchType'},
    const {'1': 'AssignedTo', '3': 3, '4': 1, '5': 9, '10': 'AssignedTo'},
    const {'1': 'Warehouse', '3': 4, '4': 1, '5': 9, '10': 'Warehouse'},
    const {'1': 'Origin', '3': 5, '4': 1, '5': 9, '10': 'Origin'},
    const {'1': 'ProductionOrder', '3': 6, '4': 1, '5': 9, '10': 'ProductionOrder'},
    const {'1': 'SalesOrder', '3': 7, '4': 1, '5': 9, '10': 'SalesOrder'},
    const {'1': 'PickingStatus', '3': 8, '4': 1, '5': 13, '10': 'PickingStatus'},
    const {'1': 'ShippingStatus', '3': 9, '4': 1, '5': 9, '10': 'ShippingStatus'},
    const {'1': 'Customer', '3': 10, '4': 1, '5': 9, '10': 'Customer'},
    const {'1': 'DeliveryAdress', '3': 11, '4': 1, '5': 9, '10': 'DeliveryAdress'},
    const {'1': 'PlannedDateFrom', '3': 12, '4': 1, '5': 9, '10': 'PlannedDateFrom'},
    const {'1': 'PlannedDateTo', '3': 13, '4': 1, '5': 9, '10': 'PlannedDateTo'},
  ],
};

/// Descriptor for `PickingBatchSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pickingBatchSummaryDescriptor = $convert.base64Decode('ChNQaWNraW5nQmF0Y2hTdW1tYXJ5EiYKDlBpY2tpbmdCYXRjaElkGAEgAigJUg5QaWNraW5nQmF0Y2hJZBIqChBQaWNraW5nQmF0Y2hUeXBlGAIgASgNUhBQaWNraW5nQmF0Y2hUeXBlEh4KCkFzc2lnbmVkVG8YAyABKAlSCkFzc2lnbmVkVG8SHAoJV2FyZWhvdXNlGAQgASgJUglXYXJlaG91c2USFgoGT3JpZ2luGAUgASgJUgZPcmlnaW4SKAoPUHJvZHVjdGlvbk9yZGVyGAYgASgJUg9Qcm9kdWN0aW9uT3JkZXISHgoKU2FsZXNPcmRlchgHIAEoCVIKU2FsZXNPcmRlchIkCg1QaWNraW5nU3RhdHVzGAggASgNUg1QaWNraW5nU3RhdHVzEiYKDlNoaXBwaW5nU3RhdHVzGAkgASgJUg5TaGlwcGluZ1N0YXR1cxIaCghDdXN0b21lchgKIAEoCVIIQ3VzdG9tZXISJgoORGVsaXZlcnlBZHJlc3MYCyABKAlSDkRlbGl2ZXJ5QWRyZXNzEigKD1BsYW5uZWREYXRlRnJvbRgMIAEoCVIPUGxhbm5lZERhdGVGcm9tEiQKDVBsYW5uZWREYXRlVG8YDSABKAlSDVBsYW5uZWREYXRlVG8=');
@$core.Deprecated('Use pickingBatchDetailsDescriptor instead')
const PickingBatchDetails$json = const {
  '1': 'PickingBatchDetails',
  '2': const [
    const {'1': 'PickingBatchId', '3': 1, '4': 2, '5': 9, '10': 'PickingBatchId'},
    const {'1': 'PickingBatchType', '3': 2, '4': 1, '5': 13, '10': 'PickingBatchType'},
    const {'1': 'AssignedTo', '3': 3, '4': 1, '5': 9, '10': 'AssignedTo'},
    const {'1': 'Warehouse', '3': 4, '4': 1, '5': 9, '10': 'Warehouse'},
    const {'1': 'Origin', '3': 5, '4': 1, '5': 9, '10': 'Origin'},
    const {'1': 'ProductionOrder', '3': 6, '4': 1, '5': 9, '10': 'ProductionOrder'},
    const {'1': 'SalesOrder', '3': 7, '4': 1, '5': 9, '10': 'SalesOrder'},
    const {'1': 'PickingStatus', '3': 8, '4': 1, '5': 13, '10': 'PickingStatus'},
    const {'1': 'ShippingStatus', '3': 9, '4': 1, '5': 9, '10': 'ShippingStatus'},
    const {'1': 'Customer', '3': 10, '4': 1, '5': 9, '10': 'Customer'},
    const {'1': 'DeliveryAdress', '3': 11, '4': 1, '5': 9, '10': 'DeliveryAdress'},
    const {'1': 'PlannedDateFrom', '3': 12, '4': 1, '5': 9, '10': 'PlannedDateFrom'},
    const {'1': 'PlannedDateTo', '3': 13, '4': 1, '5': 9, '10': 'PlannedDateTo'},
    const {'1': 'lines', '3': 14, '4': 3, '5': 11, '6': '.PickingBatchLine', '10': 'lines'},
  ],
};

/// Descriptor for `PickingBatchDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pickingBatchDetailsDescriptor = $convert.base64Decode('ChNQaWNraW5nQmF0Y2hEZXRhaWxzEiYKDlBpY2tpbmdCYXRjaElkGAEgAigJUg5QaWNraW5nQmF0Y2hJZBIqChBQaWNraW5nQmF0Y2hUeXBlGAIgASgNUhBQaWNraW5nQmF0Y2hUeXBlEh4KCkFzc2lnbmVkVG8YAyABKAlSCkFzc2lnbmVkVG8SHAoJV2FyZWhvdXNlGAQgASgJUglXYXJlaG91c2USFgoGT3JpZ2luGAUgASgJUgZPcmlnaW4SKAoPUHJvZHVjdGlvbk9yZGVyGAYgASgJUg9Qcm9kdWN0aW9uT3JkZXISHgoKU2FsZXNPcmRlchgHIAEoCVIKU2FsZXNPcmRlchIkCg1QaWNraW5nU3RhdHVzGAggASgNUg1QaWNraW5nU3RhdHVzEiYKDlNoaXBwaW5nU3RhdHVzGAkgASgJUg5TaGlwcGluZ1N0YXR1cxIaCghDdXN0b21lchgKIAEoCVIIQ3VzdG9tZXISJgoORGVsaXZlcnlBZHJlc3MYCyABKAlSDkRlbGl2ZXJ5QWRyZXNzEigKD1BsYW5uZWREYXRlRnJvbRgMIAEoCVIPUGxhbm5lZERhdGVGcm9tEiQKDVBsYW5uZWREYXRlVG8YDSABKAlSDVBsYW5uZWREYXRlVG8SJwoFbGluZXMYDiADKAsyES5QaWNraW5nQmF0Y2hMaW5lUgVsaW5lcw==');
@$core.Deprecated('Use pickingBatchLineDescriptor instead')
const PickingBatchLine$json = const {
  '1': 'PickingBatchLine',
  '2': const [
    const {'1': 'LineId', '3': 1, '4': 2, '5': 9, '10': 'LineId'},
    const {'1': 'Item', '3': 2, '4': 1, '5': 9, '10': 'Item'},
    const {'1': 'ItemDescription', '3': 3, '4': 1, '5': 9, '10': 'ItemDescription'},
    const {'1': 'Lot', '3': 4, '4': 1, '5': 9, '10': 'Lot'},
    const {'1': 'Location', '3': 5, '4': 1, '5': 9, '10': 'Location'},
    const {'1': 'Quantity', '3': 6, '4': 1, '5': 13, '10': 'Quantity'},
    const {'1': 'Unit', '3': 7, '4': 1, '5': 9, '10': 'Unit'},
    const {'1': 'Status', '3': 8, '4': 1, '5': 13, '10': 'Status'},
  ],
};

/// Descriptor for `PickingBatchLine`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pickingBatchLineDescriptor = $convert.base64Decode('ChBQaWNraW5nQmF0Y2hMaW5lEhYKBkxpbmVJZBgBIAIoCVIGTGluZUlkEhIKBEl0ZW0YAiABKAlSBEl0ZW0SKAoPSXRlbURlc2NyaXB0aW9uGAMgASgJUg9JdGVtRGVzY3JpcHRpb24SEAoDTG90GAQgASgJUgNMb3QSGgoITG9jYXRpb24YBSABKAlSCExvY2F0aW9uEhoKCFF1YW50aXR5GAYgASgNUghRdWFudGl0eRISCgRVbml0GAcgASgJUgRVbml0EhYKBlN0YXR1cxgIIAEoDVIGU3RhdHVz');
@$core.Deprecated('Use resultDescriptor instead')
const Result$json = const {
  '1': 'Result',
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode('CgZSZXN1bHQ=');
