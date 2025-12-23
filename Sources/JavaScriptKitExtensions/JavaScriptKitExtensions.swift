// The Swift Programming Language
// https://docs.swift.org/swift-book

import JavaScriptKit

extension JSObject {
    public subscript<T: ConvertibleToJSValue & ConstructibleFromJSValue>(dynamicMember name: String) -> T? {
        get { T.construct(from: self[name]) }
        set { self[name] = newValue.jsValue }
    }
}

extension JSValue {
    public subscript<T: ConvertibleToJSValue & ConstructibleFromJSValue>(dynamicMember name: String) -> T? {
        get { T.construct(from: object![name]) }
        set { object![name] = newValue.jsValue }
    }
}


