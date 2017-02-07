func convertString(str: String?) -> Bool {
  guard let target = str else {
    return false
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

  print(ret.joined(separator: ""))
  return true
}


print("Input1>", terminator: "")
let line: String? = readLine()
let _ = convertString(str: line)
