// 2024.03.28
// leehoseok
// 2750: 입력받은 수 중복제거 후 정렬

//useSortResult()
sortNumber()

// os 제공 sort 함수 사용할 경우
func useSortResult() {
  let result = getNumber()
  var deplicated = Array(Set(result))
  deplicated.sort()
  
  print(deplicated.map { "\($0)" }.joined(separator: "\n"))
}

// 정렬울 직접 구현하는 경우
func sortNumber() {
  let array = quickSort(array: getNumber())
  print(array.map { "\($0)" }.joined(separator: "\n"))
}

// 숫자 입력
func getNumber() -> [Int] {
  let count = Int(readLine()!)!
  var array = [Int]()
  for _ in 1...count {
    array.append(Int(readLine()!)!)
  }
  return array
}

// 퀵소트 구현
func quickSort(array: [Int]) -> [Int] {
                                         guard array.count > 1 else {
   return array
  }

  let pos = Int(array.count / 2)
  let pivot = array[pos]
  var left = [Int]()
  var right = [Int]()
  for n in array {
    if n > pivot
      {
      right.append(n)
    } else if n < pivot {
        left.append(n)
    }
  }

  return quickSort(array: left) + [pivot] + quickSort(array: right)
}