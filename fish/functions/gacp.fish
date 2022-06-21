function gacp # This is the function name and command we call
    git --git-dir=$PWD/.git add . # Stage all unstaged files
    git --git-dir=$PWD/.git commit -a -m $argv # Commit files with the given argument as the commit message
    git --git-dir=$PWD/.git push # Push to remote
end
