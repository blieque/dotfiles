"""

Hollow Theme
Blieque Mariguan (@blieque, GitHub and Twitter)

For use with powerline-shell (milkbikis/powerline-shell).
MIT licensed.

"""

class Color(DefaultColor):

    HOME_SPECIAL_DISPLAY = True
    HOME_BG = 33        # solarised blue
    HOME_FG = 230       # cream
    PATH_BG = 235       # dark grey
    PATH_FG = 246       # light-ish grey
    CWD_FG = 251        # light grey
    SEPARATOR_FG = 240  # little-lighter-than-dark-grey grey

    READONLY_BG = 124   # strong red
    READONLY_FG = 230   # cream

    SSH_BG = 56         # blue-ish purple
    SSH_FG = 230        # cream

    REPO_CLEAN_BG = 61  # lilac-ish
    REPO_CLEAN_FG = 230 # cream
    REPO_DIRTY_BG = 125 # hot pink-ish purple
    REPO_DIRTY_FG = 230 # cream

    CMD_PASSED_BG = 234 # dark grey
    CMD_PASSED_FG = 251 # light-ish grey
    CMD_FAILED_BG = 197 # pink
    CMD_FAILED_FG = 230 # cream

    # START UNUSED

    USERNAME_FG = 250
    USERNAME_BG = 240
    USERNAME_ROOT_BG = 124

    HOSTNAME_FG = 250
    HOSTNAME_BG = 238

    SVN_CHANGES_BG = 148
    SVN_CHANGES_FG = 22

    VIRTUAL_ENV_BG = 35
    VIRTUAL_ENV_FG = 00

    JOBS_FG = 33
    JOBS_BG = 238

    # END UNUSED
