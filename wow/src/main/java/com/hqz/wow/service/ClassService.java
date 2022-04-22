package com.hqz.wow.service;

import com.hqz.wow.entity.ClassEntity;

import java.util.List;

public interface ClassService {
    List<ClassEntity> getClassEntityList();

    ClassEntity getClassEntityById(int id);
}
