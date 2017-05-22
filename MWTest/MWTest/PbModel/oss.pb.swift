/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: oss.proto
 *
 */

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

/// 用于构造上传文件HTTP请求的信息
struct Bbproto_PUpload: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".PUpload"

  ///要上传的文件是否存在
  var exists: Bool = false

  ///经服务端签好名的文件上传URL, exists为false时有意义
  var url: String = String()

  ///必要增加的Http Header信息
  var headers: [String] = []

  ///文件名。（要上传的文件如果存在，则通过此字段返回文件名）
  var objectKey: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.exists)
      case 2: try decoder.decodeSingularStringField(value: &self.url)
      case 3: try decoder.decodeRepeatedStringField(value: &self.headers)
      case 4: try decoder.decodeSingularStringField(value: &self.objectKey)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.exists != false {
      try visitor.visitSingularBoolField(value: self.exists, fieldNumber: 1)
    }
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 2)
    }
    if !self.headers.isEmpty {
      try visitor.visitRepeatedStringField(value: self.headers, fieldNumber: 3)
    }
    if !self.objectKey.isEmpty {
      try visitor.visitSingularStringField(value: self.objectKey, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// 用于构造下载文件HTTP请求的信息
struct Bbproto_PDownload: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".PDownload"

  ///经服务端签好名的文件下载URL
  var url: String = String()

  ///图片文件的缩略图URL
  var thumb: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.url)
      case 2: try decoder.decodeSingularStringField(value: &self.thumb)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 1)
    }
    if !self.thumb.isEmpty {
      try visitor.visitSingularStringField(value: self.thumb, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// 多个文件的上传信息
struct Bbproto_PUploadArray: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".PUploadArray"

  var uploads: [Bbproto_PUpload] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.uploads)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.uploads.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.uploads, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// 多个文件的下载信息
struct Bbproto_PDownloadArray: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".PDownloadArray"

  var downloads: [Bbproto_PDownload] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.downloads)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.downloads.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.downloads, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Bbproto_PFileInfo: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".PFileInfo"

  ///要上传的文件的md5 hexstring
  var digest: String = String()

  ///文件大小，字节
  var length: Int32 = 0

  ///扩展名
  var extension_p: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.digest)
      case 2: try decoder.decodeSingularInt32Field(value: &self.length)
      case 3: try decoder.decodeSingularStringField(value: &self.extension_p)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.digest.isEmpty {
      try visitor.visitSingularStringField(value: self.digest, fieldNumber: 1)
    }
    if self.length != 0 {
      try visitor.visitSingularInt32Field(value: self.length, fieldNumber: 2)
    }
    if !self.extension_p.isEmpty {
      try visitor.visitSingularStringField(value: self.extension_p, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Bbproto_PFileInfoArray: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".PFileInfoArray"

  var fileInfos: [Bbproto_PFileInfo] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.fileInfos)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fileInfos.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fileInfos, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Bbproto_PMultiPartUpload: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".PMultiPartUpload"

  ///要上传的文件是否存在
  var exists: Bool = false

  ///最终的文件名，一般与init接口指定的objectkey一致
  var objectKey: String = String()

  ///阿里oss返回的上传ID，请于上传期间保存
  var uploadID: String = String()

  ///与阿里oss交互的域名
  var domain: String = String()

  var accessKeyID: String = String()

  var expires: String = String()

  ///签名数组
  var sign: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.exists)
      case 2: try decoder.decodeSingularStringField(value: &self.objectKey)
      case 3: try decoder.decodeSingularStringField(value: &self.uploadID)
      case 4: try decoder.decodeSingularStringField(value: &self.domain)
      case 5: try decoder.decodeSingularStringField(value: &self.accessKeyID)
      case 6: try decoder.decodeSingularStringField(value: &self.expires)
      case 7: try decoder.decodeRepeatedStringField(value: &self.sign)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.exists != false {
      try visitor.visitSingularBoolField(value: self.exists, fieldNumber: 1)
    }
    if !self.objectKey.isEmpty {
      try visitor.visitSingularStringField(value: self.objectKey, fieldNumber: 2)
    }
    if !self.uploadID.isEmpty {
      try visitor.visitSingularStringField(value: self.uploadID, fieldNumber: 3)
    }
    if !self.domain.isEmpty {
      try visitor.visitSingularStringField(value: self.domain, fieldNumber: 4)
    }
    if !self.accessKeyID.isEmpty {
      try visitor.visitSingularStringField(value: self.accessKeyID, fieldNumber: 5)
    }
    if !self.expires.isEmpty {
      try visitor.visitSingularStringField(value: self.expires, fieldNumber: 6)
    }
    if !self.sign.isEmpty {
      try visitor.visitRepeatedStringField(value: self.sign, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bbproto"

extension Bbproto_PUpload: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "exists"),
    2: .same(proto: "url"),
    3: .same(proto: "headers"),
    4: .same(proto: "objectKey"),
  ]

  func _protobuf_generated_isEqualTo(other: Bbproto_PUpload) -> Bool {
    if self.exists != other.exists {return false}
    if self.url != other.url {return false}
    if self.headers != other.headers {return false}
    if self.objectKey != other.objectKey {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bbproto_PDownload: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "url"),
    2: .same(proto: "thumb"),
  ]

  func _protobuf_generated_isEqualTo(other: Bbproto_PDownload) -> Bool {
    if self.url != other.url {return false}
    if self.thumb != other.thumb {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bbproto_PUploadArray: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uploads"),
  ]

  func _protobuf_generated_isEqualTo(other: Bbproto_PUploadArray) -> Bool {
    if self.uploads != other.uploads {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bbproto_PDownloadArray: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "downloads"),
  ]

  func _protobuf_generated_isEqualTo(other: Bbproto_PDownloadArray) -> Bool {
    if self.downloads != other.downloads {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bbproto_PFileInfo: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "digest"),
    2: .same(proto: "length"),
    3: .same(proto: "extension"),
  ]

  func _protobuf_generated_isEqualTo(other: Bbproto_PFileInfo) -> Bool {
    if self.digest != other.digest {return false}
    if self.length != other.length {return false}
    if self.extension_p != other.extension_p {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bbproto_PFileInfoArray: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fileInfos"),
  ]

  func _protobuf_generated_isEqualTo(other: Bbproto_PFileInfoArray) -> Bool {
    if self.fileInfos != other.fileInfos {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Bbproto_PMultiPartUpload: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "exists"),
    2: .same(proto: "objectKey"),
    3: .same(proto: "uploadId"),
    4: .same(proto: "domain"),
    5: .same(proto: "accessKeyId"),
    6: .same(proto: "expires"),
    7: .same(proto: "sign"),
  ]

  func _protobuf_generated_isEqualTo(other: Bbproto_PMultiPartUpload) -> Bool {
    if self.exists != other.exists {return false}
    if self.objectKey != other.objectKey {return false}
    if self.uploadID != other.uploadID {return false}
    if self.domain != other.domain {return false}
    if self.accessKeyID != other.accessKeyID {return false}
    if self.expires != other.expires {return false}
    if self.sign != other.sign {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}