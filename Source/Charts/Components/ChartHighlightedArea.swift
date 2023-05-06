//
//  ChartHighlightedArea.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics


open class ChartHighlightedArea: ComponentBase {

    @objc open var startValue = Double(0.0)
    @objc open var endValue = Double(0.0)
    @objc open var backgroundColor = NSUIColor(red: 237.0/255.0, green: 91.0/255.0, blue: 91.0/255.0, alpha: 0.5)
    @objc open var lineColor = NSUIColor(red: 237.0/255.0, green: 91.0/255.0, blue: 91.0/255.0, alpha: 1.0)
    private var _lineWidth = CGFloat(0.0)

    @objc open var lineDashPhase = CGFloat(0.0)
    @objc open var lineDashLengths: [CGFloat]?

    @objc public init(startValue: Double, endValue: Double)
    {
        super.init()
        self.startValue = startValue
        self.endValue = endValue
    }

    /// set the line width of the chart (min = 0.0, max = 12); default 0
    @objc open var lineWidth: CGFloat
    {
        get
        {
            return _lineWidth
        }
        set
        {
            _lineWidth = newValue.clamped(to: 0.0...12)
        }
    }
}
