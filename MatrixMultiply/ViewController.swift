//
//  ViewController.swift
//  MatrixMultiply
//
//  Created by Tony Camilli on 7/30/15.
//  Copyright (c) 2015 Solera Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myArrayA: [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]           //[[1,2,3],[4,5,6]]
        let myArrayB: [[Int]] = [[11,12,13],[14,15,16],[17,18,19]]  //[[11,12],[13,14],[15,16]]
        
        if(myArrayA[0].count != myArrayB.count)
        {
            println("Error.  Arrays are not in the right proportion")
        }
        else
        {
            var myArrayC = Array(count: myArrayA.count, repeatedValue:Array(count: myArrayB[0].count, repeatedValue:Int()))
            
            for var cx = 0; cx < myArrayA.count; cx++
            {
                for var cy = 0; cy < myArrayB[0].count; cy++
                {
                    for var i = 0; i < myArrayB.count; i++
                    {
                        myArrayC[cx][cy] += myArrayA[cx][i]*myArrayB[i][cy]
                    }
                    print("\(myArrayC[cx][cy])  ")
                }
                println()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

