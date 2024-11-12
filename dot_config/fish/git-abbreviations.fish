#!/usr/bin/env fish

# abbrs for git and related tools
abbr --add root 'cd $(git rev-parse --show-toplevel)'

#: k is easier to type than g
abbr --add k git
abbr --add ka git a
abbr --add kaa git aa
abbr --add kaac git aac
abbr --add kaaf git aaf
abbr --add kaf git aaf
abbr --add kac git ac
abbr --add kau git au
abbr --add kauc git auc
abbr --add kauf git auf
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
abbr --add kse git se
abbr --add ksl git sl

# git-forgit
abbr --add kj git-forgit
abbr --add kja git-forgit add
abbr --add kjb git-forgit blame
abbr --add kjd git-forgit diff
abbr --add kjl git-forgit log
abbr --add kjr git-forgit rebase
abbr --add kjsp git-forgit stash_push
abbr --add kjss git-forgit stash_show

# gitu
abbr --add kk gitu

# lazygit
abbr --add lk lazygit
abbr --add lkb lazygit branch
abbr --add lkl lazygit log
abbr --add lks lazygit status
abbr --add lkss lazygit stash
