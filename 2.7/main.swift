func check(head: Item, next: Item?) -> Item? {
  if next == nil {
    return head
  }
  let a: Item? = check(head: head, next: next?.next())
  print("!!!")
  a?.dump()
  next?.dump()
  if a != nil && a!.isEqual(next!) {
    return a!.next()
  }
  return nil
}

let list = Item.loadFromStdIn()
let headCandidate = check(head: list, next: list.next())
if headCandidate != nil && headCandidate!.isEqual(list) {
  print("OK")
} else {
  print("NG")
}
