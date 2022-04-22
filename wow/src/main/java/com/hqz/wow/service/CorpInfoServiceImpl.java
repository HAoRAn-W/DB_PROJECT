package com.hqz.wow.service;

import com.hqz.wow.entity.CorpInfoEntity;
import com.hqz.wow.mapper.CorpInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("corpInfoService")
public class CorpInfoServiceImpl implements CorpInfoService {

    @Autowired
    CorpInfoMapper corpInfoMapper;

    @Override
    public List<CorpInfoEntity> getCorpInfoEntityList() {
        return corpInfoMapper.selectList(null);
    }


}
