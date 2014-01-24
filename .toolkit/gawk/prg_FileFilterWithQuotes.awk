# ======================================================================================
# File         : prg_FileFilterWithQuotes.awk
# Author       : Wu Jie 
# Last Change  : 06/01/2009 | 16:33:51 PM | Monday,June
# Description  : 
# ======================================================================================

# ------------------------------------------------------------------ 
# Desc: 
# ------------------------------------------------------------------ 

# EXAMPLE { 
# /\.cpp$|\.vim$|\.txt$|\.mk$/{
#     printf("\"%s\"\n",$0)
# }
# } EXAMPLE end 

$0 ~ filter_pattern{
    printf("\"%s\"\n",$0)
}

