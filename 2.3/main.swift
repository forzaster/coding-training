func remove(_ item: Item) {
  if let next = item.next() {
    item.copyFrom(next)
  }
}

let items = Item.loadFromStdIn()
print("Input k>", terminator:"")
if let inStr = readLine() {
  if let idx = Int(inStr) {
    var item: Item? = items
    for i in 1 ..< idx {
      item = item?.next()
    }
    item?.dump()
    if let target = item {
      remove(target)
    }
    Item.dumpList(items)
  }
}
