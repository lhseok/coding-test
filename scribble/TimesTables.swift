// 2024.03.28 구구단 연습
// leehoseok

printTimesTable()

func printTimesTable() {
  let N = getNumber()

  print("-------")
  print((1...9).map { "\(N) * \($0) = \(N * $0)" }.joined(separator: "\n"))
  print("-------")
}

func getNumber() -> Int {
  print("Input Number: ")
  guard let N = readLine(),
  let result = Int(N) else {
    print("Input integer number please.")
    return getNumber()
  }

  return result
}