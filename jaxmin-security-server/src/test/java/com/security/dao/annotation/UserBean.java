package com.security.dao.annotation;

/**
 * @author: Administrator
 * @date : 2017/2/10 0010
 * @Description:
 */
public class UserBean {
    private String name;
    private String password;
    private int age;
    private float salary;

    @Property
    public boolean isPersion(){
        return true;
    }

    @Property
    public String getName() {
        return name;
    }
    @Property
    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    @Property
    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }
}
