package com.hqz.wow.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("hqz_sec_question")
public class SecurityQuestionEntity {

    @TableId(value = "q_id")
    private Integer questionId;

    @TableField(value = "sec_question")
    private String securityQuestion;
}
