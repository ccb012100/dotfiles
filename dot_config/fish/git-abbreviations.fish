#!/usr/bin/env fish

# abbrs for git and related tools

#: k is easier to type than g
abbr --add k git
abbr --add ka git a
abbr --add kaa git aa
abbr --add kaac git aac
abbr --add kac git ac
abbr --add kau git au
abbr --add kauc git auc
abbr --add kb git b
abbr --add kbr git br
abbr --add kc git c
abbr --add kcb git cb
abbr --add kd git diff
abbr --add kds git ds
abbr --add kf git f
abbr --add kl git l
abbr --add kp git p
abbr --add kps git ps
abbr --add ks git s

# git-forgit
abbr --add kj git-forgit
abbr --add kja git-forgit add
abbr --add kjl git-forgit log

# gitui
abbr --add kui gitui

# GitHub CLI
# TODO: can this be done inside the gh cli app?
abbr --add ghv 'gh pr view --web || gh repo view --web'

# lazygit
abbr --add lk lazygit
abbr --add ld lazydocker
