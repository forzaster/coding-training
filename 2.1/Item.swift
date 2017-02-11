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
