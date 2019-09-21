package com.creatorbluer.cbmv;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
//接口的扫秒
@MapperScan("com.creatorbluer.cbmv.mapper")
//启用事务管理
@EnableTransactionManagement
public class CbmvSpringbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(CbmvSpringbootApplication.class, args);
	}

}
