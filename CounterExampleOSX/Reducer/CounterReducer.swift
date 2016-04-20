//
// Created by Nobuya Oshiro on 2016/04/19.
// Copyright (c) 2016 Nobuya Oshiro. All rights reserved.
//

import Foundation
import ReSwift

struct CounterReducer: Reducer {

    func handleAction(action: Action, state: AppState?) -> AppState {
        switch action {
        case _ as CounterActionIncrease: return AppState(counter: state.map{$0.counter + 1} ?? 0)
        case _ as CounterActionDecrease: return AppState(counter: state.map{$0.counter - 1} ?? 0)
        default: return AppState(counter: 0)
        }
    }
}
