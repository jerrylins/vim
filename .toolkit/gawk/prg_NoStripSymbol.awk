# ======================================================================================
# File         : prg_NoStripSymbol.awk
# Author       : Wu Jie 
# Last Change  : 10/19/2008 | 15:26:29 PM | Sunday,October
# Description  : 
# ======================================================================================

# ------------------------------------------------------------------ 
# Desc: 
# ------------------------------------------------------------------ 

!/^!_TAG/{
    FS = "[\t]";
    KeyStr = $1;
    Mask[KeyStr] = KeyStr;
}
END{
    n = asort(Mask);
    for (i=1;i<=n;++i)
        print(Mask[i]);
}

