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

let lhs = Item.loadFromStdIn()
let rhs = Item.loadFromStdIn()

let l: Int = toValue(item: lhs)
let r: Int = toValue(item: rhs)
let ret: Int = l + r
print(String(l) + " + " + String(r) + " = " + String(ret))
