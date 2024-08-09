/* tagging */
static const char *tags[] = { "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX" };


/* fonts & size */
static const char *fonts[]          = { "Iosevka:size=12" };
static const char dmenufont[]       = "Jetbrains Mono Nerd:size=12";


static const char col_gray1[]       = "#1d171a"; // deselected bg
static const char col_gray2[]       = "#8e8a95"; // deselected border
static const char col_gray3[]       = "#8e8a95"; // deselected text
static const char col_gray4[]       = "#b72e27"; // selected text
static const char col_gray5[]	    = "#b72e27"; // selected border
static const char col_cyan[]        = "#1d171a"; // selected bg


/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "kitty", NULL };
