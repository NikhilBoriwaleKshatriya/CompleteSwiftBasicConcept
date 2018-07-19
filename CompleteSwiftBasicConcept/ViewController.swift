//
//  ViewController.swift
//  CompleteSwiftBasicConcept
//
//  Created by Nikhil Boriwale on 17/07/18.
//  Copyright © 2018 nikhilboriwale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basicString ()
        basicOptional()
        basicArray()
        basicDictionary()
        basicSets()
        basicTuples()
        basicControlflow()
    }
    
    func basicString(){
        //String
        
        let str = "Hello frinds"
        print(str)
        var mainstr =  "Nikhil"
        print(mainstr)
        mainstr = "Nikhil Boriwale"
        print(mainstr)
        
        
        //Empty String
        let emptystr = ""
        
        //Check EmptyString
        if emptystr.isEmpty{
            print("empty")
        }else{
            print("not empty")
        }
        
        //Compare String
        
        var a = "Nikhil"
        var b = "boriwale"
        if a == b{
            print("equal string")
        }else{
            print("not equal")
        }
        
        //Variable Declare
        
        var va = 1212
        var vb :Float
        vb = 12.12
        print(vb)
    
        
    }

    
    func basicOptional(){
        
        // OPTIONAL
        
        var aa : Int?
        var bb :String?
        print(aa)
        print(bb)
        
        if bb != nil{
            print("String is nil")
        }else{
            print("string is nil")
        }
        
        //ForceWrapping
        let mainstr1:String? = "YUPP"
        print("with optinal = \(mainstr1)")
        
        // Optionl value gurranted value is available
        print("withOut optinal =\(mainstr1!)")
        
        
        // Optionl value safely wrapping "? optional" to " ! force unwrapp"
        
        // SWIFT STANDWAY WRAPPING
        
        // using IF LET
        if let mainstrr = mainstr1 {
            print("safely wrap value using IF LET Statemnet value is =  \(mainstr1!)")
        }else{
            print("not found")
        }
        
        // GUARD LET
        guard let unwrappedname = mainstr1  else {
            print("not found")
            return
        }
        print("safely wrap value using GUARD Statemnet value is = \(unwrappedname)")
        
        // != to safely wrapping
        
        if mainstr1 != nil{
            print("safely wrap value using Not EQUAL Statemnet value is IF conditon = \(mainstr1!)")
        }else{
            print("not found")
        }
}
    func basicArray(){
        var myarr = [Int]()  //Empty array
        myarr = [12,12,12]  //array literial
        print(myarr)
        
        //Wroking String
        let age = 22
        let name = "NB"
        let s1 = name + " is " + String(age) // Int to string
        print(s1)
        
        // Initlizae Array
        var stars : [String] = ["A","B","C"]
        print(stars)
        //Access specfic value from Array
        print(stars[0])
        print(stars[1])
        
        //Append value
        stars.append("D")
        print(stars)
        // count value
        print(stars.count)
        //Insert item into Array
        
        stars.insert("F", at: 1)
        print(stars)
        //Get all value from Array
        
        for list in stars {
            print(list)
        }
 
    }
    
    func basicDictionary(){
        var ages = ["nik":22, "Bor":23]
        //print(ages)
        print(ages ["nik"]!)
        
        //IF lET statment
        if let arraages = ages["Bor"]{
            print("year of old\(arraages)")
        }else{
            print("not found using if let statment")
        }
        
        //GUARD Statment
        guard let guardarranges = ages["nik"] else {
            print("not found using guard")
            return
        }
        print(guardarranges)
       
        //Add new item into dict using subscript
        ages["poo"] = 25
        print(ages)
        
        //get all the values from a dictionary for-in syntax
        
        for (key,value) in ages{
            print("\(key) : \(value)")
        }
        // dictionary total value Count
        print(ages.count)
        // check  Dic count is 0 using isEqual property
        if ages .isEmpty {
            print("value count\(ages.count)")
        }else{
            print("value not avialbe  to count")
        }
        
    }
    
    func basicSets(){
        
        
        var color : Set<String> = ["Blue","Red","orange","Blue"]
        print(color)
        color.insert("black")
        color.remove("Red")
        print(color)
        print(color.contains("Red")) //Return false or true
        
        
    }
  
    // TUples :store multiple variable in single identifire
    func basicTuples(){
        let fullname = ["nikhil","Boriwale"] // [string :sting]
        print(fullname)
        fullname.index(before: 1)
        print(fullname.index(before: 1))  //print index value with item
        
        let (first,last) = ("a","b")
        print(first)
        
        let (f1,_)  = ("c","v")
      print(f1)
     }
    //Control Flow
    func basicControlflow(){
        
        //Switch
        let Value = "Nikhil missing"
        
        switch Value {
        case "h":
            print("eats ")
        case "w":
            print("eats meat")
        default:
            print("no match")
        }
        
        // Enumarted : get value with his index use enmurated
        let list = ["w", "b","j"]
        for (index, element) in list.enumerated() {
            print("Item \(index): \(element)")
        }
    }
    
    
    
    
}
