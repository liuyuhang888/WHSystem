package com.WHSystem.utils;

import java.util.UUID;

/**
 *
 * 功能描述: 生成随机用户id类
 *
 * @param:
 * @return:
 * @auther:
 * @date: 2020/2/9 11:54
 */

public class RodomIdUtil {
    public static  String getRodomId(){
        UUID uuid = UUID.randomUUID();
       return uuid.toString();
    }

}
