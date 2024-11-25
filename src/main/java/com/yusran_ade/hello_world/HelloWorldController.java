package com.yusran_ade.hello_world;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
  @RequestMapping("/")
  public String hello() {
    return "Hello, from Yusran and Spring Boot 3.4.0!";
  }
}
