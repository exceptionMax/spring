package com.bjpowernode.controller;

import com.bjpowernode.pojo.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class StudentListAction {

    @RequestMapping("/list")
    @ResponseBody  /*解析Ajax请求需要在springmvc.xml中添加注解驱动*/
    public List<Student> list(){
        List<Student> list = new ArrayList<>();
        Student student = new Student("周润发", 50);
        Student student1 = new Student("jack", 60);
        Student student2 = new Student("tomcat", 8);
        list.add(student);
        list.add(student1);
        list.add(student2);
        return list;   //springmvc框架负责将集合转为json数组
    }
}
