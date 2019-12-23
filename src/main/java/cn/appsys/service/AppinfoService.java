package cn.appsys.service;

import cn.appsys.pojo.AppInfo;
import cn.appsys.tools.PageData;


public interface AppinfoService {
    PageData selectPageBy(AppInfo appinfo, Integer pageIndex, Integer pageSize);
}
