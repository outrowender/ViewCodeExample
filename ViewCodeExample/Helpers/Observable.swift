//
//  Observable.swift
//  Created by Wender on 11/08/22.
//

class Observable<T> {
    
    private(set) var value: T {
        didSet {
            listener?(value)
        }
    }
    
    /// The listener registered to this event
    /// TODO: Maybe allow multiple listeners?
    private var listener: ((T) -> Void)?
    
    /// Initialize you observable to later get values on it
    init(_ value: T) {
        self.value = value
    }
    
    /// You can subscribe to get new values for this object
    func subscribe(_ listener: @escaping(T) -> Void) {
        listener(value)
        self.listener = listener
    }
}
