func toValue(item: Item) -> Int {
  var ret: Int = 0
  var i: Item? = item
  var x: Int = 1
  while i != nil {
    ret += i!.getValue() * x
    i = i!.next()
    x *= 10
  }
  return ret
}

func fromValue(value: Int) -> Item? {
  var digit: Int = 1
  var tmp: Int = 1
  while true {
    tmp *= 10
    if tmp > value {
      break
    }
    digit += 1
  }

  var v: Int = value
  var ret: Item? = nil
  var prev: Item? = nil
  for _ in 0 ..< digit {
    let item = Item(v % 10)
    if ret == nil {
      ret = item
    }
    if prev != nil {
      let _ = prev!.setNext(item)
    }
    prev = item
    v /= 10
  }

  return ret
}

let lhs = Item.loadFromStdIn()
let rhs = Item.loadFromStdIn()

let l: Int = toValue(item: lhs)
let r: Int = toValue(item: rhs)
let value: Int = l + r
print(String(l) + " + " + String(r) + " = " + String(value))
let item = fromValue(value: value)
Item.dumpList(item!)
