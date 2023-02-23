static const char col_gray1[]       = "#000f14";
static const char col_gray2[]       = "#000f14";
static const char col_gray3[]       = "#000f14";
static const char col_gray4[]       = "#4b5059";
static const char col_cyan[]        = "#000f14";
static const char gray3[]           = "#4b5059";
static const char black[]           = "#000f14"; /* tags background */
static const char red[]             = "#a0a0b4";
static const char green[]           = "#a0a0b4";
static const char yellow[]          = "#a0a0b4";
static const char blue[]            = "#a0a0b4";
static const char purple[]          = "#a0a0b4";
static const char pink[]            = "#a0a0b4";
static const char col_borderbar[]   = "#000f14";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]     = { col_gray4, col_cyan,  col_cyan  },
    [SchemeTag]        = { gray3, black, black },
    [SchemeTag1]       = { red,  black, black },
    [SchemeTag2]       = { green,   black, black },
    [SchemeTag3]       = { yellow, black,black },
    [SchemeTag4]       = { blue, black, black },
    [SchemeTag5]       = { purple,  black, black },
    [SchemeTag6]       = { red,  black, black },
    [SchemeTag7]       = { green,   black, black },
    [SchemeTag8]       = { yellow, black,black },
    [SchemeTag9]       = { blue, black, black },
    [SchemeLayout]     = { green, black, black },
};

