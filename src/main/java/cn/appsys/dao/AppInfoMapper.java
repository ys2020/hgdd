package cn.appsys.dao;

import cn.appsys.pojo.AppInfo;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AppInfo record);

    int insertSelective(AppInfo record);

    AppInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppInfo record);

    int updateByPrimaryKey(AppInfo record);

    int selectCountBy(AppInfo appinfo);

    List<AppInfo> selectListBy(@Param("appinfo") AppInfo appinfo,
                               @Param("offset") int offset,
                               @Param("pageSize") Integer pageSize);
}