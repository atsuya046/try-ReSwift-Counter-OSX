//
//  ViewController.swift
//  CounterExampleOSX
//
//  Created by Nobuya Oshiro on 2016/04/19.
//  Copyright © 2016年 Nobuya Oshiro. All rights reserved.
//

import Cocoa
import ReSwift

class ViewController: NSViewController, StoreSubscriber {

    private let store: Store<AppState> = Store<AppState>(reducer: CounterReducer(), state: AppState(counter: 0))

    override func viewDidLoad() {
        super.viewDidLoad()
        store.subscribe(self)

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBOutlet weak var increaseButton: NSButtonCell!
    @IBOutlet weak var decreaseButton: NSButton!
    @IBOutlet weak var label: NSTextField!

    func newState(state: AppState) {
        label.stringValue = String(state.counter)
    }

    @IBAction func increaseButtonOnClick(sender: AnyObject) {
        store.dispatch(CounterActionIncrease())
    }
    @IBAction func decreaseButtonOnClick(sender: AnyObject) {
        store.dispatch(CounterActionDecrease())
    }
}

