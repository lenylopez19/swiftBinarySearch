//
//  main.swift
//  Swift-binarySearch
//
//  Created by leny lopez on 3/25/24.
//

import Foundation

func binarySearch(on arr:[Int],toFind value:Int) -> Bool{
    var left: Int = 0
    var right: Int = arr.count
    while(left < right){
        let mid = left + (right - left) / 2
        if(arr[mid]==value){
            return true
        }else if(value > arr[mid]){
            left = mid + 1
        }else {
            right = mid
        }
    }
    return false
}

var test1: [Int] = [1,2,3,4,5,6,7,8]
var test2: [Int] = [-114,0,13,44,65,76,97,108]
var test3: [Int] = [-1500,2356,31333,450030,550055,656666,766666,866666]

print(binarySearch(on: test1, toFind: 8))
print(binarySearch(on: test2, toFind: -114))
print(binarySearch(on: test3, toFind: -1501))
