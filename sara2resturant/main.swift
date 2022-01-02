//
//  main.swift
//  sara2resturant
//
//  Created by Sara Ahmed Alshammari on 28/05/1443 AH.
//

import Foundation

//
//  main.swift
//  sara resturant
//
//  Created by Sara Ahmed Alshammari on 21/05/1443 AH.
import Foundation

struct custmerInformations{
    var names = " "
    var phoneNumber = 0
    
}

// i used dictionary for menu
var menu = ["Kabsah": 35.50 , "Grssan": 18.60 , "jaresh":15.55 ,"Kbebah":20.87,"Masoub": 18 ,"Hot Sauce": 2.40, "Bread": 1.50, "French fries":8, "Hummus":12, "Green salad": 10]
// I created this array to calculate the total price
var userOrder : [Double] = []
var totalPrice = 0.0

// this functions for display resturant menu
func disolayMenu(){
print("\t\t\t\tWelcome to Sara's Restaurant🖐🏼🤩\n\t\t\t\t\tAre You Hungry?")
print("-------------------------------------------------------------")
print("-------- Food Menu --------------------- Side Orders --------")
print("-------------------------------------------------------------")
print("1. Kabsah 35.50 SR\t\t\t\t\t6. Hot Sauce  2.40 SR \n2. Grssan 18.60 SR\t\t\t\t\t7. Bread      1.50 SR\n3. jaresh 15.55 SR\t\t\t\t\t8. French fries  8 SR\n4. Kbebah 20.87 SR\t\t\t\t\t9. Hummus       12 SR\n5. Masoub 18    SR\t\t\t\t   10. Green salad  10 SR ")
print("-------------------------------------------------------------")
}
disolayMenu()
// this function for Calculating quantities meals
var charge: Double?
func takecustomerdata(price:Double) -> Double{
    print("Enter Quantity")
    var charge: Double
    var quantity:Int
    quantity = Int(readLine()!)!
    charge = Double(quantity) * price
    print("Total Quantity = \(charge) SR")
    return charge
}
// here i used while loop and switch for the user to select menu meals
print("Are You Ready To Order? 📝 ")
var checkMeal = readLine()
while checkMeal == "yes" {
    print("Select Meal Number ")
    if let type = readLine(){
        switch type {
        case "1" :
            print("The Price For Your Kabsah Is ", menu["Kabsah"]!)
            totalPrice += takecustomerdata( price: Double( menu ["Kabsah"]!))
            userOrder.append(menu["Kabsah"]!)
        case "2":
            print("The Price For Your Grssan Is", menu["Grssan"]!)
            totalPrice += takecustomerdata( price: Double( menu ["Grssan"]!))
            userOrder.append(menu["Grssan"]!)
        case "3":
            print("The Price For Your Jaresh Is", menu["jaresh"]!)
            totalPrice += takecustomerdata( price: Double( menu ["jaresh"]!))
            userOrder.append(menu["jaresh"]!)
        case "4":
            print("The Price For Your Kbebah Is", menu["Kbebah"]!)
            totalPrice += takecustomerdata( price: Double( menu ["Kbebah"]!))
            userOrder.append(menu["Kbebah"]!)
        case "5":
            print("The Price For Your Masoub Is", menu["Masoub"]!)
            totalPrice += takecustomerdata( price: Double( menu ["Masoub"]!))
            userOrder.append(menu["Masoub"]!)
        case "6" :
            print("you are added hot sauce")
            print("The Price For Your Hot Sauce Is", menu["Hot Sauce"]!)
            totalPrice += takecustomerdata( price: Double( menu ["Hot Sauce"]!))
            userOrder.append(menu["Hot Sauce"]!)
        case "7" :
            print("you are added Bread")
            print("The Price For Your Bread Is", menu["Bread"]!)
            totalPrice += takecustomerdata( price: Double( menu ["Bread"]!))
            userOrder.append(menu["Bread"]!)
        case "8" :
            print("you are added French fries")
            print("The Price For Your French fries Is", menu["French fries"]!)
            totalPrice += takecustomerdata( price: Double( menu ["French fries"]!))
            userOrder.append(menu["French fries"]!)
            
        case "9" :
            print("you are added Hummus")
            print("The Price For Your French fries Is", menu["Hummus"]!)
            totalPrice += takecustomerdata( price: Double( menu ["Hummus"]!))
            userOrder.append(menu["Hummus"]!)
        case "10" :
            print("you are added Green salad")
            print("The Price For Your French fries Is", menu["Green salad"]!)
            totalPrice += takecustomerdata( price: Double( menu ["Green salad"]!))
            userOrder.append(menu["Green salad"]!)
        default:
            print("Sorry please Try Again☹️")
        }
        //Here I used the conditional ّIF statement to re-display the menu
        print("Do You Want New Meals?")
        checkMeal = readLine()
        if checkMeal == "yes"{
            disolayMenu()
      }
    }}
//take custmer information and print the bill
print("Did You Complet Your Order? ")
checkMeal = readLine()
if checkMeal == "yes"{
var info = custmerInformations()
print("Enter Your Name")
info.names = readLine()!
print("Enter Your Phone Number")
    info.phoneNumber = Int(readLine()!)!
    print("Total Price : \(totalPrice) \(info) ")}

        


