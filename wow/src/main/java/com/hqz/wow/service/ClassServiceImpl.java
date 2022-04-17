package com.hqz.wow.service;

import com.hqz.wow.entity.ClassEntity;
import com.hqz.wow.mapper.ClassMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassServiceImpl implements ClassService{

    @Autowired
    ClassMapper classMapper;

    @Override
    public List<ClassEntity> getClassEntityList() {
        return classMapper.selectList(null);
    }

    @Override
    public ClassEntity getClassEntityById(int id) {
        return classMapper.selectById(id);
    }
}
