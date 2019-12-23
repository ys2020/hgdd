package cn.appsys.service.impl;

import cn.appsys.dao.AppCategoryMapper;
import cn.appsys.pojo.AppCategory;
import cn.appsys.service.AppCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppCategoryServiceImpl implements AppCategoryService {
    @Autowired
    private AppCategoryMapper categoryMapper;

    @Override
    public List<AppCategory> selectCategoryByParentId(Integer parentId) {
        return categoryMapper.selectCategoryByParentId(parentId);
    }
}
