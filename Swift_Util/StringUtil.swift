//
//  StringUtil.swift
//  Swift_Util
//
//  Created by 宋飞龙 on 16/6/3.
//  Copyright © 2016年 宋飞龙. All rights reserved.
//

import UIKit

class StringUtil: NSObject {
    //处理字符串
    class func dealString(s:String) -> String{
        return (NSNull.isEqual(s) || s.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 0) ? "" : self.replaceBothSideBlank(s)
    }
    //除去字符所有空格
    class func replaceAllBlank(s:String) -> String {
        return s.stringByReplacingOccurrencesOfString(" ", withString: "")
    }
    //除去两边的空格
    class func replaceBothSideBlank(s:String) -> String {
        return s.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
    //NSString转NSData
    class func toData(s:String) -> NSData {
        return s.dataUsingEncoding(NSUTF8StringEncoding)!
    }
    //NSString转NSNumber
    class func toNumber(s:String) -> NSNumber {
        return NSNumber(long: Int(s)!)
    }
    //分拆字符串
    class func split(s:String,flag:String) ->NSArray {
        return s.componentsSeparatedByString(flag)
    }
}
