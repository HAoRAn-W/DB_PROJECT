package com.hqz.wow.service;

import com.hqz.wow.entity.SecurityQuestionEntity;
import com.hqz.wow.mapper.SecurityQuestionMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SecurityQuestionServiceImpl implements SecurityQuestionService {

    @Resource
    SecurityQuestionMapper securityQuestionMapper;

    @Override
    public List<SecurityQuestionEntity> getSecQuestions() {
        return securityQuestionMapper.selectList(null);
    }
}
