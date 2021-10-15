package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

/**
 * @author ：ltb
 * @date ：2020/7/14
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class People {

    @Autowired
    private Cat cat;
    @Autowired
    private Dog dog;
    @Value("人名")
    private String name;

    public void setName(String name) {
        this.name = name;
    }
}
