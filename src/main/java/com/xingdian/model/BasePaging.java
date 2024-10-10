package com.xingdian.model;

import lombok.Data;

@Data
public class BasePaging {
    /**
     * 当前页码
     */
    private int pageIndex;

    /**
     * 分页大小
     */
    private int pageSize;

    /**
     * 排序
     */
    private String orderBy;
}