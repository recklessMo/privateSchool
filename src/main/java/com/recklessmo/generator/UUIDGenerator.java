package com.recklessmo.generator;

import java.util.UUID;

/**
 * Created by yanzhou on 2017/10/17.
 */
public class UUIDGenerator {

    public static String getUUID(){

        UUID uuid = UUID.randomUUID();
        String str  = uuid.toString();
        String uuidStr = str.replace("-","");
        return uuidStr;
    }
}
