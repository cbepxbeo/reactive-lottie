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
    public var content: T
    public func setSpeed(_ speed: CGFloat) -> LottieView {
        self._setSpeed(speed)
    }
    public func setLoopMode(_ loopMode: LVLoopMode) -> LottieView {
        self._setLoopMode(loopMode)
    }
    public func setContentMode(_ contentMode: UIView.ContentMode) -> LottieView {
        self._setContentMode(contentMode)
    }
}

public extension LottieView where T == LVComponent {
    init(name: String, state: Binding<LVAnimationState>? = nil){
        self.content = .init(name: name, state: state)
    }
}
