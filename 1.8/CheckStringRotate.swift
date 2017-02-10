import Foundation

func checkRotateString(str: String, rotateCandidate: String) -> Bool {
  let tmp: String = rotateCandidate + rotateCandidate
  return tmp.contains(str)
}

print("CheckTarget>", terminator:"")
let checkTarget: String? = readLine()
print("RotateCandidate>", terminator:"")
let rotateCandidate: String? = readLine()

if let target = checkTarget {
  if let rotate = rotateCandidate {
    if (checkRotateString(str: target, rotateCandidate: rotate)) {
      print("Yes")
    } else {
      print("No")
    }
  }
}
