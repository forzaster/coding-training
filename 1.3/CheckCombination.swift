func check(l: String?, r: String?) -> Bool {
  guard let lhs = l else {
    return false
  }
  guard let rhs = r else {
    return false
  }

  var rv = rhs
  let l_count = lhs.characters.count
  let r_count = rhs.characters.count
  if (l_count != r_count) {
    return false;
  }

  for i in 0 ..< l_count {
    if let i_ = lhs.index(lhs.startIndex, offsetBy: i, limitedBy: lhs.endIndex) {
      let ci = lhs[i_]
      if let idx = rv.characters.index(of: ci) {
        rv.remove(at: idx)
      } else {
        return false
      }
    }
  }

  return rv.characters.count == 0
}

print("Input1>", terminator: "")
let line1: String? = readLine()
print("Input2>", terminator: "")
let line2: String? = readLine()
var result = check(l: line1, r: line2)
if result {
  print("OK")
} else {
  print("NO")
}
