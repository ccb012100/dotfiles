function remaining_caffeinate --description 'Display the remaining time left in the active caffeinate timer'
    pmset -g assertions | rg CAFFEINATE -A1 -B2 --color=never
end