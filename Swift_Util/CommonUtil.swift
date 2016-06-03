//
//  CommonUtil.swift
//  Swift_Util
//
//  Created by 宋飞龙 on 16/6/2.
//  Copyright © 2016年 宋飞龙. All rights reserved.
//

import UIKit

class CommonUtil: NSObject {
    
    /**
     int转NSString
     */
    class func intToString(i:Int)->String {
        return String(i)
    }
    
    /**
     float转NSString
     */
    class func floatToString(f:Float)->String {
        return String(NSString(format:"%.2f",f))
    }
    
    /**
     NSNumber转NSString
     */
    class func numberToString(num:NSNumber)-> String {
        return String(NSNumberFormatter().stringFromNumber(num))
    }
    
    /**
     NSData转NSString
     */
    class func dataToString(data:NSData)->String {
        return String(data:data,encoding: NSUTF8StringEncoding)!
    }
    
    /**
     得到当前版本号
     */
    class func getCurrentVersion()->String {
        return String(NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString"))
    }
    
    /**
     浮点数转换成千分位，并保留两位小数
     */
    class func doubleToQiangfenwei(d:Double)->String {
        let numberformatter = NSNumberFormatter()
        numberformatter.positiveFormat = "###,##0.00;"
        return String(numberformatter.stringFromNumber(NSNumber(double: d)))
    }
    
    /**
     根据内容设置label行高
     */
    class func setTextHeightWithString(text:String,width:(CGFloat),fontSize:CGFloat)->CGFloat {
        return (text as NSString).boundingRectWithSize(CGSizeMake(width, CGFloat.max), options: [.UsesLineFragmentOrigin,.UsesFontLeading] as NSStringDrawingOptions, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(fontSize)], context: nil).size.height
    }
    
    /**
     根据内容设置label行宽
     */
    class func setTextWidthWithString(text:String,height:(CGFloat),fontSize:CGFloat)->CGFloat {
        return (text as NSString).boundingRectWithSize(CGSizeMake(CGFloat.max, height), options: [.UsesLineFragmentOrigin,.UsesFontLeading] as NSStringDrawingOptions, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(fontSize)], context: nil).size.width
    }
}
