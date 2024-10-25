package com.yusran_ade.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
  @RequestMapping("/")
  public String hello() {
    return "Hello, from Yusran and Spring Boot 3.4.0!";
  }
}