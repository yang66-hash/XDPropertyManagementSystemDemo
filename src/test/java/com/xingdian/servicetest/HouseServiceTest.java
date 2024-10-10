package com.xingdian.servicetest;

import com.xingdian.pojo.House;
import com.xingdian.service.impl.HouseService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class HouseServiceTest {

    @Autowired
    private HouseService houseService;

    @Test
    public void testHouseServicePage() {
        House house = new House();
        house.setIsSold("0");
        System.out.println(house.toString());
        System.out.println(houseService.getDataByPage(1,20,house));
    }
}
