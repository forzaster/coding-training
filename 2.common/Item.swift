class Item {
  private var mIdx: Int
  private var mNext: Item?

  init(_ idx: Int) {
    mIdx = idx
    mNext = nil
  }

  func next() -> Item? {
    return mNext
  }

  func setNext(_ item: Item?) -> Item? {
    let ret = mNext
    mNext = item
    return ret
  }

  func isEqual(_ item: Item) -> Bool {
    return mIdx == item.mIdx
  }

  func copyFrom(_ item: Item) {
    mIdx = item.mIdx
    mNext = item.next()
  }

  func getValue() -> Int {
    return mIdx
  }

  func dump() {
    print(String(mIdx))
  }

  static func loadFromStdIn() -> Item {
    print("Input>", terminator:"")
    let instr = readLine()
    let carray = instr!.characters
    var items: [Item] = []
    for c in carray {
        items.append(Item(Int(String(c))!))
    }
    var prev: Item? = nil
    for i in items {
      if prev != nil {
        let _ = prev!.setNext(i)
      }
      prev = i
    }
    dumpList(items[0])
    return items[0]
  }

  static func dumpList(_ i: Item?) {
    if i == nil {
      return
    }
    var item = i
    repeat {
      print(String(item!.getValue()), terminator: "")
      item = item?.next()
      if item != nil {
        print("->", terminator: "")
      } else {
        print ("")
      }
    } while item != nil
  }

}
