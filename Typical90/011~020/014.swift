//
//  014.swift
//  Typical90
//
//  Created by 米谷裕輝 on 2022/05/27.
//

let a = Int(readLine()!)!
var st = readLine()!.split(separator: " ").map{Int($0)!}
var sc = readLine()!.split(separator: " ").map{Int($0)!}
st.sort{$0 < $1}
sc.sort{$0 < $1}
var result = 0
for i in 0 ..< a{
    result += abs(st[i] - sc[i])
}
print(result)
