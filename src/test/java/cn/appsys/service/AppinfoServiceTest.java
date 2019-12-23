package cn.appsys.service;

import cn.appsys.BaseTest;
import cn.appsys.pojo.AppInfo;
import cn.appsys.tools.PageData;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class AppinfoServiceTest extends BaseTest {
    @Autowired
    AppinfoService appinfoService;
    @Test
    public void selectPageBy() throws Exception {

        AppInfo info = new AppInfo();
        info.setSoftwarename("u");
        PageData<AppInfo> pageData =appinfoService.selectPageBy(info,2,5);

        for (AppInfo appInfo : pageData.getList()) {
            System.out.println(appInfo);
        }

        System.out.println("count====>" + pageData.getCount());
    }

}