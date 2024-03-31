// 2024.03.31
// leehoseok
// 2587: 중앙값과 평균값 구하기


/*
  문제가 너무 많아 그냥 빠르게 푸는게 낫겠다는 결론.
  최단 코드로 최단 시간에 뽑아내자.
*/

var count = 5
var total = 0
var inputArray = [Int]()
for _ in 1...count {
  let n = Int(readLine()!)!
  total += n
  inputArray.append(n)
}

inputArray.sort()

print("\(total / count)\n\(inputArray[count/2])")
