package com.gd.bk.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;

// 채찍피티 알려준거 테스트용
@Service
public class FileService {
    @Autowired
    private ResourceLoader resourceLoader;

    public String getResourcesPath(){
        Resource resource = resourceLoader.getResource("classpath:resources");
        try{
            return resource.getFile().getAbsolutePath();
        }catch(Exception e){
            throw new RuntimeException("망함 : ", e);
        }
    }
}
