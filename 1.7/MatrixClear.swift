func MatrixClear(matrix: [[Int]]) -> [[Int]] {
  var column:Set<Int> = []
  var row:Set<Int> = []
  let columnCount = matrix[0].count
  let rowCount = matrix.count
  print(String(columnCount) + "x" + String(rowCount))
  for y in 0 ..< rowCount {
    for x in 0 ..< columnCount {
      if matrix[y][x] == 0 {
        column.insert(x)
        row.insert(y)
      }
    }
  }

  var ret = matrix
  for c in column {
    for y in 0 ..< rowCount {
      ret[y][c] = 0
    }
  }
  for r in row {
    for x in 0 ..< columnCount {
      ret[r][x] = 0
    }
  }

  return ret
}


let matrix = MatrixClear(matrix:[ [1,2,3], [1,0,3], [0,2,3], [1,2,3]])
for y in 0 ..< matrix.count {
  for x in 0 ..< matrix[0].count {
    print(String(matrix[y][x]) + " ", terminator:"")
  }
  print("")
}
