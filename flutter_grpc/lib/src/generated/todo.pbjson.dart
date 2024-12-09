//
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use todoItemDescriptor instead')
const TodoItem$json = {
  '1': 'TodoItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'completed', '3': 4, '4': 1, '5': 8, '10': 'completed'},
  ],
};

/// Descriptor for `TodoItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoItemDescriptor = $convert.base64Decode(
    'CghUb2RvSXRlbRIOCgJpZBgBIAEoBVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEiAKC2Rlc2'
    'NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIcCgljb21wbGV0ZWQYBCABKAhSCWNvbXBsZXRl'
    'ZA==');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use todoIdDescriptor instead')
const TodoId$json = {
  '1': 'TodoId',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `TodoId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoIdDescriptor = $convert.base64Decode(
    'CgZUb2RvSWQSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use todoListDescriptor instead')
const TodoList$json = {
  '1': 'TodoList',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.todo.TodoItem', '10': 'items'},
  ],
};

/// Descriptor for `TodoList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoListDescriptor = $convert.base64Decode(
    'CghUb2RvTGlzdBIkCgVpdGVtcxgBIAMoCzIOLnRvZG8uVG9kb0l0ZW1SBWl0ZW1z');

