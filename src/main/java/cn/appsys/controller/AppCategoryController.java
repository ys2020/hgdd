package cn.appsys.controller;

import cn.appsys.pojo.AppCategory;
import cn.appsys.service.AppCategoryService;
import cn.appsys.tools.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AppCategoryController {
    @Autowired
    private AppCategoryService categoryService;

    @ResponseBody
    @RequestMapping(value="/categorylevellist.json",method = {RequestMethod.GET,RequestMethod.POST})
    public Object listSubCategoryByParentId(@RequestParam("pid") Integer parentId){
        List<AppCategory> appCategories = categoryService.selectCategoryByParentId(parentId);
        return ResponseResult.success(appCategories);

    }
}
