static const char col_gray1[]       = "#060a0c";
static const char col_gray2[]       = "#060a0c";
static const char col_gray3[]       = "#89b4fa";
static const char col_gray4[]       = "#606672";
static const char col_cyan[]        = "#060a0c";
static const char gray3[]           = "#606672";
static const char black[]           = "#060a0c"; /* tags background */
static const char red[]             = "#f38ba8";
static const char green[]           = "#a6e3a1";
static const char yellow[]          = "#f9e2af";
static const char blue[]            = "#89b4fa";
static const char purple[]          = "#f5c2e7";
static const char pink[]            = "#94e2d5";
static const char col_borderbar[]   = "#060a0c";
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

