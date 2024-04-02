// 20240403
// 2751: 수 정렬하기 2

let n = Int(readLine()!)!
let array = (1...n).map { _ in Int(readLine()!)! }.sorted()
print(array.map { "\($0)\n" }.joined())
