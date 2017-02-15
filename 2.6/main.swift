func makeLoop(_ item: Item, pos: Int) -> Item? {
  var next: Item? = item
  var idx: Int = 0
  var loopHead: Item? = nil
  var prev: Item? = nil
  while next != nil {
    if idx == pos {
      loopHead = next
    }
    prev = next
    idx += 1
    next = next!.next()
  }
  if prev != nil && loopHead != nil {
    let _ = prev!.setNext(loopHead!)
  }
  return item
}

func searchLoopHead(_ item: Item) -> Item? {
  var a: Item? = item
  var b: Item? = item
  var isOnce: Bool = false
  while a != nil && b != nil {
    a = a!.next()
    b = isOnce ? b!.next() : b!.next()?.next()
    if (a!.isEqual(b!)) {
      if isOnce {
        return a
      } else {
        isOnce = true
        a = item
      }
    }
  }
  return nil
}

let list_ = Item.loadFromStdIn()
print("Input loop head pos>", terminator:"")
let loopHeadIdx = Int(readLine()!)
let list = makeLoop(list_, pos: loopHeadIdx!)
var ret: Item? = searchLoopHead(list!)

if ret != nil {
  print(String(ret!.getValue()))
} else {
  print("Not found")
}
