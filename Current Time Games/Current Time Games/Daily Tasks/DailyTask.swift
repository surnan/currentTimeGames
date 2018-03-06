//
//  DailyTask.swift
//  Current Time Games
//
//  Created by admin on 3/6/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation

class DailyTask {
    var name: String
    var eventTime: Date
    
    init(name: String, eventTime: Date) {
        self.name = name
        self.eventTime = eventTime
    }
}
