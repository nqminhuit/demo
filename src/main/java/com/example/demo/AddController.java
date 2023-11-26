package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AddController {

    @GetMapping("/add")
    public Integer add(@RequestParam int a, @RequestParam int b) {
        int c = 1 + 3;
        return c;
    }

}
