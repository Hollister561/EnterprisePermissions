package com.permission.param;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@ToString
public class DeptParam {

    private Integer id;

    @NotBlank(message = "Dept name can not null")
    @Length(max = 15, min = 2,message = "DeptName Length limit between 2 to 15")
    private  String name;

    private Integer parentId =0;

    @NotNull(message = "Dept seq not null")
    private Integer seq;

    @Length(max = 150,message = "remark length limit under 150 ")
    private String remark;
}
