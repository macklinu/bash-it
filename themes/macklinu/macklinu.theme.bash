#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}💩 "
SCM_THEME_PROMPT_CLEAN=" ${bold_green}🍺 "
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX="${green}"

GIT_THEME_PROMPT_DIRTY=" ${red}🚨 "
GIT_THEME_PROMPT_CLEAN=" ${bold_green}💚 "
GIT_THEME_PROMPT_PREFIX=" ${green}"
GIT_THEME_PROMPT_SUFFIX="${green}"

function prompt_command() {
  local ruby="${red}$(ruby_version_prompt)${reset_color}"
  PS1="\n${purple}\u ${reset_color}in ${green}\w${ruby}\n${bold_cyan}$(scm_char)${green}$(scm_prompt_info) ${green}→${reset_color} "
}

PROMPT_COMMAND=prompt_command;
