package cn.appsys.service.impl;

import cn.appsys.dao.DevUserMapper;
import cn.appsys.pojo.DevUser;
import cn.appsys.service.DevUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DevUserServiceImpl implements DevUserService {

    @Autowired
    private DevUserMapper userMapper;

    @Override
    public DevUser login(DevUser user) {
        DevUser loginUser =  userMapper.selectByDevCode(user.getDevcode());
        if (loginUser == null){
            return null;
        }
       if(!loginUser.getDevpassword().equals(user.getDevpassword())){
           return null;
       }
        return loginUser;
    }
}
