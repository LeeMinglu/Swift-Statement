//
//  Person.swift
//  Swift Statement
//
//  Created by 李明禄 on 2017/4/3.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit


/**
 1.定义模型属性的时候，如果是对象，通常是可选的； 
    -在需要的时候创建
    -避免写构造函数，可以简化代码
 2.如果是基本数据类型，不能设置为可选的，而且要设置初始值。 
 3.如果需要使用KVC设置数值，属性不能是private
 4.使用KVC方法之前，应该调用super.init,保证对象实例化完成。
 
 
 */
class Person: NSObject {
    var name: String?
    var age: Int = 0
    var title: String?
    
    init(dict:[String: Any]) {
        super.init()
        setValuesForKeys(dict)
    }

}
