package com.gd.bk.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletContext;
import java.io.File;

@Service
public class ResourceService {
    @Autowired
    private ServletContext servletContext;

    public String getResourcesPath() {
        // webapp/resources의 실제 경로 가져오기
        String resourcesPath = servletContext.getRealPath("/resources/");
        return resourcesPath; // D:/your-project-path/webapp/resources/
    }
}
