/*
 
Project: ReactiveLottie
File: LottieView.swift
Created by: cbepxbeo
Date: 21.12.2022

Status: #Completed | #Decorated
 
*/

import SwiftUI
import _lottieview

public typealias LVComponent = _LottieView
public typealias LVAnimationState = _LottieView.AnimationState
public typealias LVLoopMode = _LottieView.LoopMode

@frozen public struct LottieView<T: _LottieViewComponent>: _LottieViewWrapper {
    ///The main content that does the work, including models and wrappers. You don't have to worry about this property.
    public var content: T
    ///Set animation speed
    public func setSpeed(_ speed: CGFloat) -> LottieView {
        self._setSpeed(speed)
    }
    ///Set loop mode
    public func setLoopMode(_ loopMode: LVLoopMode) -> LottieView {
        self._setLoopMode(loopMode)
    }
    ///Set content mode
    public func setContentMode(_ contentMode: UIView.ContentMode) -> LottieView {
        self._setContentMode(contentMode)
    }
}

public extension LottieView where T == LVComponent {
    init(name: String, bundle: Bundle = .main, state: Binding<LVAnimationState>? = nil){
        self.content = .init(name: name, bundle: bundle, state: state)
    }
}
