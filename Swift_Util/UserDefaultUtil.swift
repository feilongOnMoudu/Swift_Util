//
//  UserDefaultUtil.swift
//  Swift_Util
//
//  Created by 宋飞龙 on 16/6/3.
//  Copyright © 2016年 宋飞龙. All rights reserved.
//

import UIKit

class UserDefaultUtil: NSObject {
    private class func getUserDefaults() -> NSUserDefaults {
        return NSUserDefaults.standardUserDefaults()
    }
    private class func userDefaultsSynchronize() {
        self.getUserDefaults().synchronize()
    }
    
    /**
     * 设置指定key对应的本地配置项的值
     */
    class func setString(value:String,key:String) {
        self.getUserDefaults().setObject(value, forKey: key)
        self.userDefaultsSynchronize()
    }
    /**
     * 得到指定key对应的本地配置项的值
     */
    class func getString(key:String) -> String {
        if self.getUserDefaults().dictionaryRepresentation().keys.contains(key){
            return self.getUserDefaults().stringForKey(key)!
        } else {
            return ""
        }
    }
    
    /**
     * 设置指定key对应的本地配置项的值
     */
    class func setBool(value:Bool,key:String) {
        self.getUserDefaults().setBool(value, forKey: key)
        self.userDefaultsSynchronize()
    }
    /**
     * 得到指定key对应的本地配置项的值
     */
    class func getBool(key:String) -> Bool{
        if self.getUserDefaults().dictionaryRepresentation().keys.contains(key){
            return self.getUserDefaults().boolForKey(key)
        } else {
            return false
        }
    }
    
    /**
     * 设置指定key对应的本地配置项的值
     */
    class func setData(value:NSData,key:String){
        self.getUserDefaults().setValue(value, forKey: key)
        self.userDefaultsSynchronize()
    }
    /**
     * 得到指定key对应的本地配置项的值
     */
    class func getData(key:String) -> NSData {
        if self.getUserDefaults().dictionaryRepresentation().keys.contains(key){
            return self.getUserDefaults().valueForKey(key) as! NSData
        } else {
            return NSData.init()
        }
    }
    
    /**
     * 移除指定key对应的本地配置项
     */
    class func remove(key:String) {
        self.getUserDefaults().removeObjectForKey(key)
    }
}



