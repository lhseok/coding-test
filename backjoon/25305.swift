// 20240403
// 25305: 커트라인 점수 찾기

import Foundation

let k = readLine()!.components(separatedBy: " ").map { Int($0)! }.last!
var array = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()
print(array.suffix(k).first!)