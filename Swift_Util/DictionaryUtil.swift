//
//  DictionaryUtil.swift
//  Swift_Util
//
//  Created by 宋飞龙 on 16/6/3.
//  Copyright © 2016年 宋飞龙. All rights reserved.
//

import UIKit

class DictionaryUtil: NSObject {
    /**
     * 设置指定key对应的整型值
     */
    private class func setInt(value:Int,key:String,toDict:NSDictionary){
        toDict.setValue(NSNumber(long: value), forKey: key)
    }
    /**
     * 设置Dict1中key1对应的整型值，到Dict2中key2对应的字段中去
     */
    class func setIntFrom(dict1:NSDictionary,key1:String,dict2:NSDictionary,key2:String){
        let value = self.getInt(dict1, key: key1)
        self.setInt(value, key: key2, toDict: dict2)
    }
    /**
     * 得到指定key对应的整数值
     */
    class func getInt(dict:NSDictionary,key:String) -> Int {
        return  dict.objectForKey(key) == nil ? 0 : dict.objectForKey(key) as! Int
    }
    
    /**
     * 设置指定key对应的浮点数值
     */
    private class func setFloat(value:Float,key:String,toDict:NSDictionary){
        toDict.setValue(NSNumber(float: value), forKey: key)
    }
    /**
     * 设置Dict1中key1对应的浮点数值，到Dict2中key2对应的字段中去
     */
    class func setFloatFrom(dict1:NSDictionary,key1:String,dict2:NSDictionary,key2:String){
        let value = self.getFloat(dict1, key: key1)
        self.setFloat(value, key: key2, toDict: dict2)
    }
    /**
     * 得到指定key对应的浮点数值
     */
    class func getFloat(dict:NSDictionary,key:String) -> Float {
        return  dict.objectForKey(key) == nil ? 0 : dict.objectForKey(key) as! Float
    }
    
    /**
     * 设置指定key对应的字符串值
     */
    private class func setString(value:String,key:String,toDict:NSDictionary){
        toDict.setValue(value, forKey: key)
    }
    /**
     * 设置Dict1中key1对应的字符串值，到Dict2中key2对应的字段中去
     */
    class func setStringFrom(dict1:NSDictionary,key1:String,dict2:NSDictionary,key2:String){
        let value = self.getString(dict1, key: key1)
        self.setString(value, key: key2, toDict: dict2)
    }
    /**
     * 得到指定key对应的字符串值
     */
    class func getString(dict:NSDictionary,key:String) -> String {
        return  dict.objectForKey(key) == nil ? "" : dict.objectForKey(key) as! String
    }
    
    /**
     * 设置指定key对应的布尔值
     */
    private class func setBool(value:Bool,key:String,toDict:NSDictionary){
        toDict.setValue(NSNumber(bool: value), forKey: key)
    }
    /**
     * 设置Dict1中key1对应的布尔值，到Dict2中key2对应的字段中去
     */
    class func setBoolFrom(dict1:NSDictionary,key1:String,dict2:NSDictionary,key2:String){
        let value = self.getBool(dict1, key: key1)
        self.setBool(value, key: key2, toDict: dict2)
    }
    /**
     * 得到指定key对应的布尔值
     */
    class func getBool(dict:NSDictionary,key:String) -> Bool {
        return  dict.objectForKey(key) == nil ? false : dict.objectForKey(key) as! Bool
    }
    
    /**
     * 设置指定key对应的Number值
     */
    private class func setNumber(value:NSNumber,key:String,toDict:NSDictionary){
        toDict.setValue(value, forKey: key)
    }
    /**
     * 设置Dict1中key1对应的Number值，到Dict2中key2对应的字段中去
     */
    class func setNumberFrom(dict1:NSDictionary,key1:String,dict2:NSDictionary,key2:String){
        let value = self.getNumber(dict1, key: key1)
        self.setNumber(value, key: key2, toDict: dict2)
    }
    /**
     * 得到指定key对应的Number值
     */
    class func getNumber(dict:NSDictionary,key:String) -> NSNumber {
        return  dict.objectForKey(key) == nil ? 0 : dict.objectForKey(key) as! NSNumber
    }
}
