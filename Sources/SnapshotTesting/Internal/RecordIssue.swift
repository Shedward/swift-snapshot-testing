import XCTest

var isSwiftTesting: Bool {
  return false
}

@_spi(Internals)
public func recordIssue(
  _ message: @autoclosure () -> String,
  fileID: StaticString,
  filePath: StaticString,
  line: UInt,
  column: UInt
) {
  XCTFail(message(), file: filePath, line: line)
}
