package com.ctrip.framework.apollo.core.enums;

import com.ctrip.framework.apollo.core.utils.StringUtils;

public final class EnvUtils {

    public static Env transformEnv(String envName) {
        if (StringUtils.isBlank(envName)) {
            return Env.UNKNOWN;
        }
        switch (envName.trim().toUpperCase()) {
            case "LPT":
                return Env.LPT;
            case "FAT":
            case "FWS":
                return Env.FAT;
            case "UAT":
                return Env.UAT;
            case "PRO":
            case "PROD":
                return Env.PROD;
            case "DEV":
                return Env.DEV;
            case "LOCAL":
                return Env.LOCAL;
            case "TEST":
                return Env.TEST;
            case "PRE":
                return Env.PRE;
            case "TOOLS":
                return Env.TOOLS;
            default:
                return Env.UNKNOWN;
        }
    }
}
