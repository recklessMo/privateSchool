package com.recklessmo.util;

import org.apache.ibatis.annotations.SelectProvider;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.nio.channels.spi.SelectorProvider;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created by hpf on 4/13/16.
 */

interface  A{
    void testA();
}

interface  B extends A{
    void testB();
}

abstract class bb implements  B{

}
//
//class cc extends  bb{
//
//}

class Person{
    public int x;

    public Person(){

    }
}

public class TimeUtils {

    public static String NORMAL_FORMAT = "yyyy-MM-dd HH:mm:ss";

    public static DateTimeFormatter dateTimeFormatter = DateTimeFormat.forPattern(NORMAL_FORMAT);

    public static void main(String[] args) throws Exception{


//        List<Integer> data = new ArrayList<>();
//        data.add(1);
//        data.add(2);
//        data.add(3);
////        Collections.rotate(data, 1);
//
//        System.out.println(8%6);
//        System.out.println((-8)%6);
//
//        List<Integer> xyz = new LinkedList<>();
//        for(int i = 0; i < 20000000; i++){
//            for(int j = 0; j < 10000; j++) {
//                xyz.add(i);
//            }
//        }

//        ConcurrentHashMap<String, String> x = new ConcurrentHashMap<>();
//        x.put("x", "x");
//        x.put("y", "yy");
//        System.out.println(x.get("x"));

        Person p = new Person();
        p.x = 111;
        ReferenceQueue r = new ReferenceQueue();
        System.out.println(r.poll() == null);
        PhantomReference<Person> t = new PhantomReference<>(p, r);
        System.out.println(r.poll() == null);
        System.out.println(t.get());
        System.out.println(r.poll() == null);
        System.out.println(p.x);
        System.out.println(t.get());
        p = null;
        System.gc();
        Thread.sleep(1000);
        System.out.println(r.poll() == null);



//        A a = new A();
//        a.print();
//
//        B b = new B();
//        b.print();


//        SelectorProvider.provider();


    }

}

