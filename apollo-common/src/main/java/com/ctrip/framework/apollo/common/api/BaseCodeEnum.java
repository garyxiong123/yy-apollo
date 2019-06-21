package com.ctrip.framework.apollo.common.api;

/**
 * 数据库字段枚举类型接口
 *
 * @author WangSongJun
 * @date 2018-06-21 10:12 星期四
 */
public interface BaseCodeEnum {
    /**
     * 类型编号
     *
     * @return
     */
    int getCode();

    /**
     * 根据编号获取到相应的枚举类型
     *
     * @param enumClass
     * @param code
     * @param <E>
     * @return
     */
    static <E extends Enum<?> & BaseCodeEnum> E codeOf(Class<E> enumClass, int code) {
        for (E e : enumClass.getEnumConstants()) {
            if (e.getCode() == code) {
                return e;
            }
        }
        return null;
    }
}
