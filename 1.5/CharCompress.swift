func compress(str: String?) -> String? {
  guard let target = str else {
    return nil;
  }

  let carray = target.characters;
  if carray.count == 0 {
    return nil
  }
  var prev: Character? = nil
  var count: Int = 0
  var retArray: [String] = []
  for c in carray {
    if c != prev {
      if prev != nil {
        retArray.append(String(count))
      }
      retArray.append(String(c))
      count = 1
    } else {
      count += 1
    }
    prev = c
  }
  retArray.append(String(count))
  let ret = retArray.joined(separator: "")
  print(String(ret.characters.count) + " " + String(carray.count))
  return ret.characters.count < carray.count ? ret : target
}

print("Input>", terminator: "")
let line: String? = readLine();
if let ret = compress(str: line) {
  print(ret)
} else {
  print("No output")
}
