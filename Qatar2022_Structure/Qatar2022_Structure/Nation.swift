//
//  File.swift
//  Qatar2022_Structure
//
//  Created by wizard on 2022/10/14.
//

import Foundation

struct Nation {
    var flag: String
    var name: String
    var group: String
}

let nations:[String:[Nation]] = [
    "A":[
        Nation(flag:"ec", name:"Ecuador", group:"A"),
        Nation(flag:"sn", name:"Senegal", group:"A"),
        Nation(flag:"nl", name:"Netherlands", group:"A"),
        Nation(flag:"qa", name:"Qatar", group:"A")],
    "B":[
        Nation(flag:"gb-wls", name:"Wales", group:"B"),
        Nation(flag:"ir", name:"Iran", group:"B"),
        Nation(flag:"us", name:"USA", group:"B"),
        Nation(flag:"gb-eng", name:"England", group:"B")],
    "C":[
        Nation(flag:"sa", name:"Saudi Arabia", group:"C"),
        Nation(flag:"pl", name:"Poland", group:"C"),
        Nation(flag:"mx", name:"Mexico", group:"C"),
        Nation(flag:"ar", name:"Argentina", group:"C")],
    "D":[Nation(flag:"au", name:"Australia", group:"D"),
         Nation(flag:"tn", name:"Tunisia", group:"D"),
         Nation(flag:"dk", name:"Denmark", group:"D"),
         Nation(flag:"fr", name:"France", group:"D")],
    "E":[
        Nation(flag:"cr", name:"Costa Rica", group:"E"),
        Nation(flag:"jp", name:"Japan", group:"E"),
        Nation(flag:"de", name:"Germany", group:"E"),
        Nation(flag:"es", name:"Spain", group:"E")],
    "F":[
        Nation(flag:"ca", name:"Canada", group:"F"),
        Nation(flag:"ma", name:"Morocco", group:"F"),
        Nation(flag:"hr", name:"Croatia", group:"F"),
        Nation(flag:"be", name:"Belgium", group:"F")],
    "G":[
        Nation(flag:"cm", name:"Cameroon", group:"G"),
        Nation(flag:"rs", name:"Serbia", group:"G"),
        Nation(flag:"ch", name:"Switzerland", group:"G"),
        Nation(flag:"br", name:"Brazil", group:"G")],
    "H":[
        Nation(flag:"gh", name:"Ghana", group:"H"),
        Nation(flag:"kr", name:"South Korea", group:"H"),
        Nation(flag:"uy", name:"Uruguay", group:"H"),
        Nation(flag:"pt", name:"Portugal", group:"H")]
]
