function cap --wraps='conda activate pytorch' --description 'alias cap conda activate pytorch'
  conda activate pytorch $argv; 
end
