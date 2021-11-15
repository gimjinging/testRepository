import UIKit


let lottos1 = [44, 1, 0, 0, 31, 25]
let lottos2 = [0, 0, 0, 0, 0, 0]
let lottos3 = [45, 4, 35, 20, 3, 9]
let lottos4 = [1, 2, 3, 4, 5, 6]

let win_nums1 = [31, 10, 45, 1, 6, 19]
let win_nums2 = [38, 19, 20, 40, 15, 25]
let win_nums3 = [20, 9, 3, 45, 4, 35]
let win_nums4 = [7, 8, 9, 10, 11, 12]

let lottos5 = [0, 0, 0, 0, 0, 1]
let win_nums5 = [1, 2, 3, 4, 5, 6]


func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
  var same = 0  // 같은 숫자의 개수
  var zero = 0  // 0의 개수
  var lower = 6  // 낮은 등수
  var higher = 6  // 높은 등수
  
  // 0의 개수와 lottos에서 win_nums와 같은 숫자의 개수를 각각 세어준다
  for i in lottos {
    if i == 0 {
      zero += 1
    } else {
      for j in win_nums {
        if i == j {
          same += 1
          break
        }
      }
    }
  }
  
  // 순위 계산하기
  if same == 0 { // 같은 숫자의 개수가 0일때
    if zero > 0 {
      higher = 6 - zero + 1
    }
  } else if same == 6 { // 모든 숫자가 같을 때
    lower = 1
    higher = 1
  } else { // 그 외 나머지
    lower = 6 - same + 1
    higher = lower - zero
  }
  
  return [higher, lower]
}

solution(lottos5, win_nums5)



solution(lottos4, win_nums4)

solution(lottos1, win_nums1)
solution(lottos2, win_nums2)
solution(lottos3, win_nums3)




//lottos.sorted()
//win_nums.sorted()
//
//var sameCount = 0
//var zeroCount = 0
//
//
//for i in lottos {
//  if i == 0 {
//    zeroCount += 1
//  } else {
//
//    for j in win_nums {
//      if i == j {
//        sameCount += 1
//        break
//      }
//    }
//  }
//}
//
//sameCount
//zeroCount
//
//var lower = 6
//var higher = 6
//
//if sameCount == 0 {
//  if zeroCount > 0 {
//    higher = 6 - zeroCount + 1
//  }
//} else if sameCount == 6 {
//  lower = 1
//  higher = 1
//} else {
//  lower = 6 - zeroCount + 1
//  higher = lower - zeroCount
//}
//
//
//lower
//higher
//
//



