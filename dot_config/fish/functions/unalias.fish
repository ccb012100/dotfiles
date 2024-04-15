function unalias --wraps "functions --erase"
    functions erase $argv;
end