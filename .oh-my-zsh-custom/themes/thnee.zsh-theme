#!/usr/bin/env zsh

# Set required options.
setopt promptsubst

# Load required modules.
autoload -U add-zsh-hook
autoload -Uz vcs_info

# Add hook for calling vcs_info before each command.
add-zsh-hook precmd vcs_info

# Set vcs_info parameters.
zstyle ':vcs_info:*' enable hg bzr git
zstyle ':vcs_info:*:*' check-for-changes true # Can be slow on big repos.
zstyle ':vcs_info:*:*' unstagedstr '!'
zstyle ':vcs_info:*:*' stagedstr '+'
zstyle ':vcs_info:*:*' actionformats "%S" "%r/%s/%b %u%c (%a)"
zstyle ':vcs_info:*:*' formats "%S" "%r/%s/%b %u%c"
zstyle ':vcs_info:*:*' nvcsformats "%~" ""

PROMPT="\
%{$FG[214]%}\
λ\
%{$FX[reset]%}\
 \
"

RPROMPT="\
%{$FG[248]%}\
%n@%m\
 \
%{$FG[251]%}\
%{$FX[bold]%}\
%~\
%{$FX[no-bold]%}\
 \
%{$FG[248]%}\
"'$vcs_info_msg_1_'"\
%{$FX[reset]%}\
"

