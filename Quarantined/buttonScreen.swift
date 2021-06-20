//
//  buttonScreen.swift
//  bored
//
//  Created by Liam Shatzel on 4/4/20.
//  Copyright © 2020 Liam Shatzel. All rights reserved.
//

import UIKit

class buttonScreen: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func info(_ sender: Any) {
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    }
    
    
    @IBAction func randomWord(_ sender: Any) {
        
        label.text = ( list1.next() )
        
        let array2 =
            [
             UIColor(hue: 0, saturation: 0.57, brightness: 1, alpha: 1.0),
             UIColor(hue: 0.5556, saturation: 0.57, brightness: 1, alpha: 1.0),
             UIColor(hue: 0.7583, saturation: 0.57, brightness: 0.99, alpha: 1.0),
             UIColor(hue: 0.4833, saturation: 0.57, brightness: 0.92, alpha: 1.0) /* #64eadd */]
        self.view.backgroundColor = array2.randomElement()
    }
    
    override var prefersStatusBarHidden: Bool {
    return true
        
    }
    
    var list1 = RandomItems(["Bake cupcakes","Read a book", "Go on a hike", "Make a video", "Watch a movie", "Take a shower", "Write a book", "Cry", "Watch YouTube", "Play with a dog or pet",
    "Cry more",
    "Talk to yourself",
    "Cry again",
    "Stalk people on Spotify",
    "Make playlists",
    "Bake",
    "Watch TikTok",
    "Play Candy Crush",
    "Workout",
    "Fight your siblings",
    "Golf",
    "Watch Netflix",
    "Sew",
    "Stretch",
    "Journal",
    "Do a Face-mask",
    "Do a puzzle",
    "Go for a walk",
    "Try to sleep",
    "You got this the quarantine is almost over",
    "Stay positive",
    "Draw something",
    "Paint a masterpiece",
    "Get on Houseparty with some friends",
    "Host a virtual Party",
    "Get outside",
    "Learn something new",
    "Smile",
    "Be happy",
    "Meditate",
    "Cook something new",
    "Ride a bike",
    "Learn a language",
    "Climb a tree",
    "Start a company",
    "Stay inside",
    "Help someone out",
    "Make an app",
    "Make a cookbook",
    "Try a new food",
    "Watch TV",
    "Eat good food",
    "Play Webkinz", "Play Xbox",
    "Do Push-Ups",
    "Walk a dog",
    "Facetime your friends",
    "Write a poem",
    "Do yoga",
    "Try a new hairstyle",
    "Drink tea",
    "Plan a future trip",
    "Find a new podcast",
    "Plan a future party",
    "Stage a photo shoot",
    "Talk to someone new",
    "Clean",
    "Make a list of goals",
    "Start a garden",
    "Shop online",
    "Go on pinterest",
    "Tye-Dye stuff",
    "Craft something",
    "Build a fort",
    "Write a letter",
    "Have a dance party",
    "Try one of those weird 5-minute craft videos",
    "Make a vision board",
    "Solve a rubix cube",
    "Listen to music",
    "Go on Urban Dictionary",
    "Make a Tik Tok"
    ])
    
    struct RandomItems
    {
       var items : [String]
       var seen  = 0

       init(_ items:[String])
       { self.items = items }

       mutating func next() -> String
       {
         let index = Int(arc4random_uniform(UInt32(items.count - seen)))
         let item  = items.remove(at:index)
         items.append(item)
         seen = (seen + 1) % items.count
         return item
       }
    }

}
