package cn.appsys.service.impl;

import cn.appsys.dao.DataDictionaryMapper;
import cn.appsys.pojo.DataDictionary;
import cn.appsys.service.DataDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataDictionaryServiceImpl implements DataDictionaryService {

    @Autowired
    private DataDictionaryMapper dictionaryMapper;

    @Override
    public List<DataDictionary> selectByTypecode(String typecode) {
        return dictionaryMapper.selectByTypecode(typecode);
    }
}
