package com.ctrip.framework.apollo.common.api;

import com.ctrip.framework.apollo.common.ResultCodeConstant;
import com.ctrip.framework.apollo.common.enums.BaseResultCode;
import com.ctrip.framework.apollo.common.exception.BizException;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;

/**
 * Description:
 * <p/>
 * <p> Result
 * <p/>
 *
 * @author Ping
 * @date 2018/5/7
 */
@Data
public class Result<T> implements Serializable {

    /**
     * 返回错误码
     */
    public String code;

    /**
     * 返回提示信息
     */
    public String desc;
    /**
     * 返回结果对象
     */
    public T data;
    /**
     * 异常处理堆栈
     */
    @JsonIgnore
    protected transient Throwable exception;

    public Result() {
        this(BaseResultCode.SUCCESS);
    }

    protected Result(T data) {
        this();
        this.data = data;
    }

    protected Result(String code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    protected Result(String code, String desc, T data) {
        this.code = code;
        this.desc = desc;
        this.data = data;
    }

    protected Result(IBaseResultCode iBaseResultCode) {
        this.code = iBaseResultCode.getCode();
        this.desc = iBaseResultCode.getDesc();
    }

    protected Result(IBaseResultCode iBaseResultCode, Throwable exception) {
        this.code = iBaseResultCode.getCode();
        this.desc = iBaseResultCode.getDesc();
        this.exception = exception;
    }


    protected Result(String code, String desc, Throwable exception) {
        this.code = code;
        this.desc = desc;
        this.exception = exception;
    }

//    public static <T> Result<T> newInstance(T t) {
//        return new Result<>(t);
//    }
//
//    /**
//     * 默认返回成功
//     *
//     * @param <T>
//     * @return
//     */
//    public static <T> Result<T> newInstance() {
//        return new Result<T>(BaseResultCode.SUCCESS);
//    }
//
//    /**
//     * 通过枚举构造实例，并且返回
//     *
//     * @param baseResultEnum
//     * @param <T>
//     * @return
//     */
//    public static <T> Result<T> newInstance(IBaseResultCode baseResultEnum) {
//        return new Result<>(baseResultEnum);
//    }
//
//    /**
//     * 通过枚举构和异常，构造实例，并且返回
//     *
//     * @param baseResultEnum
//     * @param e
//     * @param <T>
//     * @return
//     */
//    public static <T> Result<T> newInstance(IBaseResultCode baseResultEnum, Throwable e) {
//        return newInstance(baseResultEnum, e, null);
//    }
//
//    /**
//     * 通过枚举构和错误描述，构造实例，并且返回
//     *
//     * @param baseResultEnum
//     * @param desc
//     * @return
//     */
//    public static <T> Result<T> newInstance(IBaseResultCode baseResultEnum, String desc) {
//        Result<T> result = new Result<>(baseResultEnum);
//        result.setDesc(desc);
//        return result;
//    }
//
//    /**
//     * 通过枚举构，错误异常和描述，构造例，并且返回.
//     *
//     * @param baseResultEnum
//     * @param e
//     * @param desc
//     * @return
//     */
//    public static <T> Result<T> newInstance(IBaseResultCode baseResultEnum, Throwable e, String desc) {
//        Result<T> result = new Result<>(baseResultEnum);
//        result.setException(e);
//        result.setDesc(desc);
//        return result;
//    }

    public static <T> Result<T> ok() {
        return new Result(BaseResultCode.SUCCESS);
    }


    public static <T> Result<T> ok(T t) {
        return new Result(t);
    }

    public static <T> Result<T> smsOk(T t) {
        Result result = ok(t);
        result.setCode(ResultCodeConstant.SMS_SUCCESS);
        return result;
    }

    public boolean isSmsOk() {
        return ResultCodeConstant.SMS_SUCCESS.equals(this.getCode());
    }

    public Result<T> convertSmsOk() {
        if (ResultCodeConstant.SMS_SUCCESS.equals(this.getCode())) {
            this.setCode(ResultCodeConstant.SUCCESS);
        }

        return this;
    }

    public static <T> Result<T> okDesc(String desc) {
        return new Result(ResultCodeConstant.SUCCESS, desc);
    }

    public static <T> Result<T> okDesc(String desc, T t) {
        return new Result(ResultCodeConstant.SUCCESS, desc, t);
    }

    public static <K, V> MapResult<K, V> okMap(Map<K, V> data) {
        return new MapResult(data);
    }


    public static <T> Result<T> okList(List<T> data) {
        return new ListResult(data);
    }

    public static <T> Result<T> fail(String code, String desc) {
        return new ErrorResult<>(code, desc);
    }

    public static <T> Result<T> fail(String desc) {
        return new ErrorResult<>("-1", desc);
    }

    public static <T> Result<T> fail(IBaseResultCode baseResultEnum) {
        return new ErrorResult<>(baseResultEnum);
    }

    public static <T> Result<T> fail(IBaseResultCode baseResultEnum, String desc) {
        return new ErrorResult<>(baseResultEnum, desc);
    }

    public static <T> Result<T> unsureReturn(String code, String desc, T data) {
        return new Result<T>(code, desc, data);
    }

    public static <T> Result<T> fail(IBaseResultCode baseResultEnum, Throwable exception) {
        return new ErrorResult<>(baseResultEnum, exception);
    }


    public static <T> Result<T> fail(IBaseResultCode baseResultEnum, Throwable e, String desc) {
        Result result = new ErrorResult<>(baseResultEnum, e);
        result.desc = desc;
        return result;
    }


    public boolean success() {
        return ResultCodeConstant.SUCCESS.equals(code);
    }


    public <R> Result<R> ifSuccess(Function<T, ? extends Result<R>> function) {
        if (success()) {
            return function.apply(data);
        }
        return Result.fail(BaseResultCode.SYSTEM_ERROR);
    }


    public Result<T> ifNotSuccess(Consumer<? super T> consumer) {
        if (!success()) {
            consumer.accept(data);
        }
        return this;
    }


    public Result<T> ifNotSuccessThrowException() {
        if (!success()) {
            throw new BizException(this.code, this.desc);
        }
        return this;
    }

    public Result<T> ifNotSuccessOrNullThrowException() {
        if (!success() || this.data == null) {
            throw new BizException(this.code, this.desc);
        }
        return this;
    }

    public Result<T> ifNotSuccessThrowException(BizException biz) {
        if (!success()) {
            throw biz;
        }
        return this;
    }

    @Deprecated
    public Result<T> throwException(BizException biz) {
        return ifNotSuccessThrowException(biz);
    }

    @Deprecated
    public Result<T> throwException() {
        return ifNotSuccessThrowException();
    }


}