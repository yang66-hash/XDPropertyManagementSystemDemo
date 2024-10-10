# Spring Boot 项目结构

```

.
├── java
│   └── com
│       └── yang
│           ├── MainApplication.java
│           ├── config 
│           │   └── xxxConfig.java
│           ├── consts
│           │   └── xxxConstant.java
│           ├── controller
│           │   └── UserController.java
│           ├── manager
│           │   └── UserManager.java
│           ├── mapper
│           │   └── UserMapper.java
│           ├── pojo
│           │   ├── bo
│           │   │   └── xxxBO.java
│           │   ├── dto
│           │   │   └── xxxDTO.java
│           │   └── po
│           │       └── xxxPO.java
│           ├── service
│           │   ├── IUserService.java
│           │   └── impl
│           │       └── UserService.java
│           └── util
│               └── xxxUtil.java
└── resources
-----------------------------------------------
    ├── mapper
    │   └── xxxMapper.xml
若是使用mybatis相关工具，会有此类xml配置文件，在MybatisPlus中，针对单表的数据库持久层接口的编写，不再需要此类xml配置文件
-----------------------------------------------
    ├── static
    └── templates
-----------------------------------------------
    ├── application.yml
    ├── application-dev.yml
    ├── application-test.yml
    ├── application-prod.yml
配置文件
-----------------------------------------------
    ├── logback.xml
Logback日志配置文件（log4j2-spring.xml，Log4j日志框架配置文件）
-----------------------------------------------

```

因为项目的复杂性和需求各不相同，许多项目可能不会严格遵循这些划分，开发者应该根据实际情况进行调整。对于小型项目或原型，可能会简化设计，将多个角色合并到一个包中。在大型项目中，遵循这些划分通常有助于提高代码的可维护性和可读性。

    config：各种相关的配置类所在。
    consts：常量定义类所在。
    controller：前端控制层 Controller。
    manager：通用业务处理层 Manager。
    service：具体的业务逻辑层接口 Service。
    service.impl：具体业务逻辑实现层 ServiceImpl。
    util：工具类目录。
    mapper：MyBatis相关项目存储数据库持久层映射接口mapper。
    pojo：包含PO/BO/VO/DTO等目录。

POJO（Plain Ordinary Java Object）：是 DO/DTO/BO/VO 的统称，POJO专指只有setter/getter/toString的简单类，包括DO/DTO/BO/VO等，但禁止命名成 xxxPOJO。

    PO（ Persistant Object）：与数据库表结构一一对应。也有使用 DO（ Data Object）代替的。
    DTO（ Data Transfer Object）：数据传输对象，Service或Manager向外传输的对象，即也是Controller中，Request或Response所封装的对象。
    BO（ Business Object）：业务对象。可以理解成Java开发过程中，抽象出来的一些与表结构无关的POJO，可能包含一到多个DO。
    VO（ View Object）：展示对象，它的作用是把某个指定页面（或组件）的所有数据封装起来。VO不常见，因为和DTO太相似，基本都用DTO替代。