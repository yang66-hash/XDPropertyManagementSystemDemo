package com.xingdian.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.xingdian.enums.ResponseStatusEnum;
import com.xingdian.pojo.House;
import com.xingdian.pojo.User;
import com.xingdian.pojo.dto.ResponseDTO;
import com.xingdian.service.impl.HouseService;
import com.xingdian.service.impl.UserService;
import lombok.extern.log4j.Log4j2;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

@Log4j2
@RestController
@RequestMapping("house")
public class HouseController {

    private final HouseService houseService;

    public HouseController(HouseService houseService) {
        this.houseService = houseService;
    }


    /**
     * @param house 分页查询条件
     * @param page 当前页
     * @param rows 当前页的数据条数
     * @return
     */
    @GetMapping("getDataByPage")
    public ResponseDTO<IPage> getDataByPage(House house, int page, int rows) {
        if (house == null || page<=0 || rows<=0)
            return ResponseDTO.failure(ResponseStatusEnum.PARAM_IS_INVALID);
        //支支持其他属性的条件分页查询
        house.setId(null);
        house.setOwnerId(null);
        house.setUserId(null);

        return ResponseDTO.success(houseService.getDataByPage(page,rows,house));
    }

}
