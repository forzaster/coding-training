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
