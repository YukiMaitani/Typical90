//
//  004.swift
//  Typical90
//
//  Created by 米谷裕輝 on 2022/05/26.
//

let ab = readLine()!.split(separator: " ").map{Int($0)!}
var twoArray:[[Int]] = []
var hSum:[Int] = []
var vSum:[Int] = []
func printResult(){
    for _ in 1 ... ab[0] {
        twoArray.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    for i in 0 ... ab[0]-1{
        hSum.append(twoArray[i].reduce(0,+))
    }
    for i in 0 ... ab[1]-1{
        var element = 0
        for j in 0 ... ab[0]-1{
            element += twoArray[j][i]
        }
        vSum.append(element)
    }
    for i in 0 ... ab[0]-1{
        for j in 0 ... ab[1]-1{
            twoArray[i][j] = hSum[i] + vSum[j] - twoArray[i][j]
        }
    }
    
    for i in 0 ... ab[0]-1{
        print(twoArray[i].map{String($0)}.joined(separator: " "))
    }
}

printResult()
