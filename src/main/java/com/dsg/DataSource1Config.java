package com.dsg;


import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceBuilder;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;


@Configuration
@MapperScan(basePackages = "com.dsg.school.dao",sqlSessionTemplateRef = "test1SqlSessionTemplate")
public class DataSource1Config {
 
    @Bean(name = "test1DataSource")
    @ConfigurationProperties(prefix = "spring.datasource.druid.test1")
    @Primary
    public DruidDataSource test1DataSource(){
        return DruidDataSourceBuilder.create().build();
    }
 
    @Bean(name = "test1SqlSessionFactory")
    @Primary
    public SqlSessionFactory test1sqlSessionFactory(@Qualifier("test1DataSource") DruidDataSource druidDataSource) throws Exception{
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(druidDataSource);
        bean.setMapperLocations(new PathMatchingResourcePatternResolver().getResources("classpath:mapper/*.xml"));
        
        return bean.getObject();
    }
 
    @Bean(name = "test1TransactionManager")
    @Primary
    public DataSourceTransactionManager test1TransactionManager(@Qualifier("test1DataSource")DruidDataSource druidDataSource){
        return new DataSourceTransactionManager(druidDataSource);
    }
 
    @Bean(name = "test1SqlSessionTemplate")
    @Primary
    public SqlSessionTemplate test1SqlSessionTemplate(@Qualifier("test1SqlSessionFactory")SqlSessionFactory sqlSessionFactory){
        return new SqlSessionTemplate(sqlSessionFactory);
    }

}
