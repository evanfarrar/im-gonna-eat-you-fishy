function grepedit -d "git grep and edit files"
  set -l filelist git grep $argv | cut -f 1 -d ':' | sort | uniq

  switch $filelist
    case ''
    echo no files found containing $argv

    case '*'
    mvim $filelist

  end

end
