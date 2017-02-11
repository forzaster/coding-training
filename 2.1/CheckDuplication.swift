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
}


func checkDuplication(_ i: Item) -> Item {
  var item: Item? = i
  while item != nil {
    var prev: Item? = item
    var item2 = item!.next()
    while item2 != nil {
      if item!.isEqual(item2!) {
        let _ = prev!.setNext(item2!.next())
      }
      prev = item2
      item2 = item2!.next()
    }
    item = item!.next()
  }
  return i
}

func dumpList(_ i: Item?)
{
  print("dumpList-----")
  var item = i
  repeat {
    item?.dump()
    item = item?.next()
  } while item != nil
  print("-------------")
}

//let items: [Item] = [Item(5), Item(2), Item(1), Item(3), Item(2), Item(8)]
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
var ret: Item? = checkDuplication(items[0])
dumpList(ret)
