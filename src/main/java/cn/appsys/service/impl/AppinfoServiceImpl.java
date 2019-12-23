package cn.appsys.service.impl;

import cn.appsys.dao.AppInfoMapper;
import cn.appsys.pojo.AppInfo;
import cn.appsys.service.AppinfoService;
import cn.appsys.tools.PageData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppinfoServiceImpl implements AppinfoService {

    @Autowired
    private AppInfoMapper appinfoMapper;

    @Override
    public PageData selectPageBy(AppInfo appinfo, Integer pageIndex, Integer pageSize) {
        // 总记录数据
        int count = appinfoMapper.selectCountBy(appinfo);
        // 传入参数判断pageIndex是否有效
        PageData pageData = new PageData(count, pageIndex, pageSize);
        // 当前页数据
        int offset = (pageData.getPageIndex() - 1) * pageSize;
        List<AppInfo> appinfoList = appinfoMapper.selectListBy(appinfo, offset, pageSize);

        pageData.setList(appinfoList);
        return pageData;
    }
}
