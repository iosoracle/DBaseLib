//
// Date+DLibExten.swift
//
// Copyright © 2022 Ding Inc. All rights reserved.
// Created by leo on 2022/11/23.
// 
// @discussion 时间扩展类
//

import UIKit

extension Date {
    /// 时间转字符串
    public func changeToStr(_ df: String = "yyyy-MM-dd") -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = df
        return dateFormat.string(from: self)
    }
}

extension String {
    /// 字符串转date
    public func changeToDate(_ format: String = "yyyy-MM-dd HH:mm:ss") -> Date? {
        let df = DateFormatter()
        df.dateFormat = format
        return df.date(from: self)
    }
    
    /// 字符串转时间戳
    public func changeToTime(_ format: String = "yyyy-MM-dd HH:mm:ss") -> TimeInterval? {
        return changeToDate(format)?.timeIntervalSince1970
    }
}
