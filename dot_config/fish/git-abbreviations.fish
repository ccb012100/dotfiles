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
abbr --add kco git co
abbr --add kd git diff
abbr --add kds git ds
abbr --add kf git f
abbr --add kl git l
abbr --add kcob git cob
abbr --add kp git p
abbr --add kpra git pra
abbr --add kps git ps
abbr --add kr git rebase
abbr --add kra git ra
abbr --add krc git rc
abbr --add kri git ri
abbr --add ks git s
abbr --add ksl git sl
abbr --add ksvv git svv
abbr --add kw k w
abbr --add kwa k wa
abbr --add kwl k wl
abbr --add kwm k wm
abbr --add kwp k wp
abbr --add kwr k wr

# git-forgit
abbr --add kj git-forgit
abbr --add kja git-forgit add
abbr --add kjbd git-forgit branch_delete
abbr --add kjblame git-forgit blame
abbr --add kjclean git-forgit clean
abbr --add kjco git-forgit checkout_branch
abbr --add kjcoc git-forgit checkout_commit
abbr --add kjcof git-forgit checkout_file
abbr --add kjcot git-forgit checkout_tag
abbr --add kjf git-forgit fixup
abbr --add kji git-forgit ignore
abbr --add kjl git-forgit log
abbr --add kjpick git-forgit cherry_pick
abbr --add kjpickb git-forgit cherry_pick_from_branch
abbr --add kjr git-forgit rebase
abbr --add kjrc git-forgit revert_commit
abbr --add kjreset git-forgit reset_head
abbr --add kjs git-forgit stash_show
abbr --add kjsp git-forgit stash_push

# gitui
abbr --add kui gitui

# GitHub CLI
# TODO: can this be done inside the gh cli app?
abbr --add ghv 'gh pr view --web || gh repo view --web'

# lazygit
abbr --add lk lazygit
abbr --add ld lazydocker
