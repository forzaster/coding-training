func findKthItemFromLast(item: Item, k: Int) -> Item? {
  var idx: Int = 1
  var ite: Item? = item
  var ret: Item? = item
  while ite?.next() != nil {
    if (idx < k) {
      idx += 1
    } else {
      ret = ret!.next()
    }
    ite = ite!.next()
  }
  return ret
}


let item: Item? = Item.loadFromStdIn()
if item != nil {
  print("Input k>", terminator:"")
  let inStr = readLine()
  if inStr != nil {
    let k: Int = Int(inStr!)!
    print (String(k) + "th item>>")
    let ret = findKthItemFromLast(item: item!, k: k)
    ret?.dump()
  }
}
