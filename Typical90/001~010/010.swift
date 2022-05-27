//
//  010.swift
//  Typical90
//
//  Created by 米谷裕輝 on 2022/05/27.
//

let a = Int(readLine()!)!
var data = [[Int]]()
for _ in 1 ... a {data.append(readLine()!.split(separator: " ").map{Int($0)!})}
let q = Int(readLine()!)!
var question = [[Int]]()
for _ in 1 ... q {question.append(readLine()!.split(separator: " ").map{Int($0)!})}
for j in 0 ..< q {
    var sum1 = 0
    var sum2 = 0
    for i in question[j][0]-1 ..< question[j][1] {
        if data[i][0] == 1{
            sum1 += data[i][1]
        }else{
            sum2 += data[i][1]
        }
    }
    print("\(sum1) \(sum2)")
}
