func convertString(str: String?) -> String? {
  guard let target = str else {
    return nil
  }

  let carray = target.characters
  var ret: [String] = []
  for c in carray {
    if c == " " {
      ret.append("%20")
    } else {
      ret.append(String(c))
    }
  }

  return ret.joined(separator: "")
}


print("Input1>", terminator: "")
let line: String? = readLine()
if let result = convertString(str: line) {
  print(result)
}
