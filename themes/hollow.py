"""

Hollow Theme
Blieque Mariguan

For use with powerline-shell (b-ryan/powerline-shell).
MIT licensed.

"""

from powerline_shell.themes.default import DefaultColor

class Color(DefaultColor):

    HOME_SPECIAL_DISPLAY = True
    HOME_BG = 33        # solarised blue
    HOME_FG = 230       # cream

    PATH_BG = 236       # dark grey
    PATH_FG = 244       # light-ish grey
    CWD_FG = 250        # light grey
    SEPARATOR_FG = 240  # little-lighter-than-dark-grey grey

    READONLY_BG = 124   # strong red
    READONLY_FG = 230   # cream

    SSH_BG = 56         # blue-ish purple
    SSH_FG = 230        # cream

    GIT_CLEAN_BG = 61  # lilac-ish
    GIT_CLEAN_FG = 230 # cream
    GIT_DIRTY_BG = 125 # hot pink-ish purple
    GIT_DIRTY_FG = 230 # cream

    GIT_AHEAD_BG = 61
    GIT_AHEAD_FG = 230
    GIT_BEHIND_BG = 61
    GIT_BEHIND_FG = 230
    GIT_STAGED_BG = 61
    GIT_STAGED_FG = 230
    GIT_NOTSTAGED_BG = 61
    GIT_NOTSTAGED_FG = 230
    GIT_UNTRACKED_BG = 61
    GIT_UNTRACKED_FG = 230
    GIT_CONFLICTED_BG = 61
    GIT_CONFLICTED_FG = 230
    GIT_STASH_BG = 61
    GIT_STASH_FG = 230

    CMD_PASSED_BG = 235 # dark grey
    CMD_PASSED_FG = 251 # light-ish grey
    CMD_FAILED_BG = 235 # pink
    CMD_FAILED_FG = 197 # cream

    # Unused

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
