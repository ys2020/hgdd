package cn.appsys.controller;

import cn.appsys.pojo.AppCategory;
import cn.appsys.pojo.AppInfo;
import cn.appsys.pojo.DataDictionary;
import cn.appsys.service.AppCategoryService;
import cn.appsys.service.AppinfoService;
import cn.appsys.service.DataDictionaryService;
import cn.appsys.tools.PageData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

@Controller
public class AppInfoController {

    @Autowired
    private DataDictionaryService dictionaryService;

    @Autowired
    private AppCategoryService categoryService;

    @Autowired
    private AppinfoService appinfoService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String toList(Model model) {
        // 状态信息
        List<DataDictionary> statusList = dictionaryService.selectByTypecode("APP_STATUS");
        // 平台信息
        List<DataDictionary> flatformList = dictionaryService.selectByTypecode("APP_FLATFORM");

        // 一级分类
        List<AppCategory> categoryList = categoryService.selectCategoryByParentId(null);

        model.addAttribute("status", statusList);
        model.addAttribute("flatform", flatformList);
        model.addAttribute("categories", categoryList);
        return "frontend/applist";
    }


    /*
    根据六个条件分页查询 app信息
     */
    @RequestMapping(value = "/list2", method = RequestMethod.GET)
    public String toList(AppInfo appinfo,
                         @RequestParam(value = "p", defaultValue = "1") Integer pageIndex,
                         @RequestParam(value = "s", defaultValue = "5") Integer pageSize,
                         Model model) {
        // 根据条件查询app信息
        PageData page = appinfoService.selectPageBy(appinfo, pageIndex, pageSize);
        // 状态信息
        List<DataDictionary> statusList = dictionaryService.selectByTypecode("APP_STATUS");
        // 平台信息
        List<DataDictionary> flatformList = dictionaryService.selectByTypecode("APP_FLATFORM");

        // 一级分类
        List<AppCategory> categoryList = categoryService.selectCategoryByParentId(null);

        model.addAttribute("page", page);
        model.addAttribute("status", statusList);
        model.addAttribute("flatform", flatformList);
        model.addAttribute("categories", categoryList);

        return "frontend/applist";
    }

}
