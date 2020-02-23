package com.WHSystem.utils;

import org.springframework.util.DigestUtils;

/**
 * @Auther: 刘宇航
 * @Date: 2020/2/8 22:58
 * @Description:
 */
public class MD5Util {
    /**
     * MD5方法 生成密文
     *
     * @param text 明文
     * @param salt 密钥
     * @return 密文
     * @throws Exception
     */
    public static String getMd5(String text, String salt) throws Exception {
        return  DigestUtils.md5DigestAsHex((text+salt).getBytes());
    }

}
