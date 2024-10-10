# SPring Boot 项目结构


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
    ├── application.yml
    ├── application-dev.yml
    ├── application-test.yml
    ├── application-prod.yml
    ├── logback.xml


```

