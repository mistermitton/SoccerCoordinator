import UIKit


// Starter Context
let height = "height"
let guardian = "guardian"
let experience = "experience"

var dragons: [[String]] = []
var sharks: [[String]] = []
var raptors: [[String]] = []

var eachTeam = [dragons, sharks, raptors]

var experiencedCount: Int
var inexperiencedCount: Int



// Deeply Nested Array For Players and Their Values
var players: [String: [String: String]] = [
    
    
    "Joe Smith": [
        
        height: "\(42)",
        experience: "YES",
        guardian: "Jim and Jan Smith"
    ],
    
    
    "Jill Tanne": [
        
        height: "\(36)",
        experience: "YES",
        guardian: "Clara Tanner"
    ],
    
    
    "Bill Bon": [
        
        height: "\(43)",
        experience: "YES",
        guardian: "Sara and Jenny Bon"
    ],
    
    
    "Eva Gordon": [
        
        height: "\(45)",
        experience: "NO",
        guardian: "Wendy and Mike Gordon"
    ],
    
    
    "Matt Gill": [
        
        height: "\(40)",
        experience: "NO",
        guardian: "Charles and Sylvia Gill"
    ],
    
    
    "Kimmy Stein": [
        
        height: "\(41)",
        experience: "NO",
        guardian: "Bill and Hillary Stein"
    ],
    
    "Sammy Adams": [
        
        height: "\(45)",
        experience: "NO",
        guardian: "Jeff Adams"
    ],
    
    "Karl Saygan": [
        
        height: "\(42)",
        experience: "YES",
        guardian: "Heather Bledsoe"
    ],
    
    "Suzane GreenBerg": [
        
        height: "\(44)",
        experience: "YES",
        guardian: "Henrietta Dumas"
    ],
    
    "Sal Dali": [
        
        height: "\(41)",
        experience: "NO",
        guardian: "Gala Dali"
    ],
    
    "Joe Kavalier": [
        
        height: "\(39)",
        experience: "NO",
        guardian: "Sam and Elaine Kavalier"
    ],
    
    "Ben Finkelstein": [
        
        height: "\(44)",
        experience: "NO",
        guardian: "Aaron and Jill Finkelstein"
    ],
    
    "Diego Soto": [
        
        height: "\(41)",
        experience: "YES",
        guardian: "Robin and Sarika Soto"
    ],
    
    "Chloe Alaska": [
        
        height: "\(47)",
        experience: "NO",
        guardian: "David and Jamie Alaska"
    ],
    
    "Arnold Willis": [
        
        height: "\(43)",
        experience: "NO",
        guardian: "Claire Willis"
    ],
    
    "Phillip Helm": [
        
        height: "\(44)",
        experience: "YES",
        guardian: "Thomas Helm and Eva Jones"
    ],
    
    "Les Clay": [
        
        height: "\(42)",
        experience: "YES",
        guardian: "Wynonna Brown"
    ],
    
    "Herschel Krustofski": [
        
        height: "\(45)",
        experience: "YES",
        guardian: "Hyman and Rachel Krustofski"
    ]
    
]



// Experienced Function
func experienceSnatch () -> [String] {
    var experienced: [String] = []
    
    for (name, value) in players {
        // for the (index, value) in players value
        for (i, v) in value {
            
            switch (i, v) {
            // in this case, if (experience, "YES") is the case then append players name.
            case (i, "YES"):
                experienced.append(name)
            default: break
            }
        }
    }
    return experienced
}



// Instance Context
var experienced = experienceSnatch()
var eachTeamAverage = players.count / eachTeam.count



// Logic That Iterates Through All 18 Players and Evenly Assigns Experienced/Inexperienced Players.
for (name, value) in players {
    for (i, v) in value {
        
        switch (i,v) {
        case (i, "YES"):
            // if (0 is less than (9 ÷ 3)) is true then continue to append experienced players until false.
            if dragons.count < (experienced.count / eachTeam.count) {
                dragons.append([name + ": \(i,v)"])
            }
            else if sharks.count < (experienced.count / eachTeam.count) {
                sharks.append([name + ": \(i,v)"])
            }
            else if raptors.count < (experienced.count / eachTeam.count) {
                raptors.append([name + ": \(i,v)"])
            }
        default: break
        }
    }
}

for (name, value) in players {
    for (i, v) in value {
        
        switch (i, v) {
        case (i, "NO"):
            // if (3 is less than 6) is true then continue to append players until false.
            if dragons.count < eachTeamAverage {
                dragons.append([name + ": \(i,v)"])
            }
            else if sharks.count < eachTeamAverage {
                sharks.append([name + ": \(i,v)"])
            }
            else if raptors.count < eachTeamAverage {
                raptors.append([name + ": \(i,v)"])
            }
            
        default: break
        }
    }
}

// Logic Results
dragons
sharks
raptors





// Team Letters Context
var dragonLetter: [[String]] = []
var sharksLetter: [[String]] = []
var raptorsLetter: [[String]] = []

var teamDragon: [[String]] = []
var teamShark: [[String]] = []
var teamRaptor: [[String]] = []


// Logic For Initializing New Instances For Team Letters
for (name, value) in players {
    for (i, v) in value {
        
        switch (i,v) {
        case (i, "YES"):
            // if (0 is less than (18 ÷ 6)) is true then continue to append players name until false.
            if teamDragon.count < (players.count / eachTeamAverage) {
                teamDragon.append([name])
            }
            else if teamShark.count < (players.count / eachTeamAverage) {
                teamShark.append([name])
            }
            else if teamRaptor.count < (players.count / eachTeamAverage) {
                teamRaptor.append([name])
            }
        default: break
        }
    }
}

for (name, value) in players {
    for (i, v) in value {
        
        switch (i, v) {
        case (i, "NO"):
            // if (3 is less than 6) is true then continue to append players name until false.
            if teamDragon.count < eachTeamAverage {
                teamDragon.append([name])
            }
            else if teamShark.count < eachTeamAverage {
                teamShark.append([name])
            }
            else if teamRaptor.count < eachTeamAverage {
                teamRaptor.append([name])
            }
        default: break
        }
    }
}



// Team Letter Logic
for (player, value) in players {
    for name in teamDragon {
        // if (the name is the same as the player) is true then continue to append until false.
        if name == [player] {
            dragonLetter.append([" Dear \(players[player]![guardian]!), your child, \(player), has been chosen to play for the Dragons! The first Dragons practice is on March 17, at 1pm. HC Philippe Mitton. "])
        }
    }
}

for (player, value) in players {
    for name in teamShark {
        if name == [player] {
            sharksLetter.append([" Dear \(players[player]![guardian]!), your child, \(player), has been chosen to play for the Sharks! The first Sharks practice is on March 17, at 3pm. HC Philippe Mitton. "])
        }
    }
}

for (player, value) in players {
    for name in teamRaptor {
        if name == [player] {
            raptorsLetter.append([" Dear \(players[player]![guardian]!), your child, \(player), has been chosen to play for the Raptors! The first Raptors practice is on March 18, at 1pm. HC Philippe Mitton. "])
        }
    }
}




// Dragons Letters
dragonLetter

// Sharks Letters
sharksLetter

// Raptors Letters
raptorsLetter



















