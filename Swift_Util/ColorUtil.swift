//
//  ColorUtil.swift
//  Swift_Util
//
//  Created by 宋飞龙 on 16/6/3.
//  Copyright © 2016年 宋飞龙. All rights reserved.
//

import UIKit

class ColorUtil: NSObject {
    
    /**
     * 得到RGB颜色: UIColor
     */
    class func getUIColorFromRed(red:CGFloat,green:CGFloat,blue:CGFloat,alpha:CGFloat)-> UIColor{
        return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    /**
     * 得到远离黑白色的随机颜色
     */
    class func getRandomColorAwayFromWhiteAndBlack()-> UIColor {
        return UIColor.init(hue: CGFloat(arc4random_uniform(255))/CGFloat(255.0), saturation: CGFloat( arc4random_uniform(128))/CGFloat(255.0), brightness: CGFloat(arc4random_uniform(128))/CGFloat(255.0), alpha: 1)
    }
}
