package com.permission.param;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * @program: EnterprisePermissions
 * @description:
 * @author: zhang yu
 * @create: 2019-12-12 14:55
 */
@Getter
@Setter
public class TestVo {
    @NotBlank
    private String a;
    @NotNull(message = "id������Ϊ��")
    @Max(value = 10, message = "id���ܴ���10")
    @Min(value = 0, message = "id���ٴ��ڵ���0")
    private Integer b;
    @NotEmpty
    private List<String> list;
}
