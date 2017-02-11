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
    print("dumpList-----")
    var item = i
    repeat {
      item?.dump()
      item = item?.next()
    } while item != nil
    print("-------------")
  }

}
