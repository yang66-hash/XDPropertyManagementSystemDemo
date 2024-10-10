package com.xingdian.controller;


import com.xingdian.pojo.User;
import com.xingdian.pojo.dto.ResponseDTO;
import com.xingdian.service.impl.UserService;
import lombok.extern.log4j.Log4j2;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

@Log4j2
@RestController
@RequestMapping("user")
public class UserController {

    public static final Logger logger = LoggerFactory.getLogger(UserController.class);

    private final UserService userService;

    public UserController(UserService userService) {
        log.info("UserController constructor is executing ...");
        log.debug("This is a debug log ...");
        this.userService = userService;

    }

    @GetMapping("getUserById")
    public ResponseDTO<User> getUserById(@RequestParam int id) {
        return ResponseDTO.success(userService.getUserById(id));
    }


}
