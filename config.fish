set PATH /usr/bin /bin /usr/sbin /sbin /usr/local/Cellar/fish/1.23.1/bin /usr/X11R6/bin /usr/local/bin /opt/local/bin /opt/ruby-enterprise/bin/ ~/.gem/ruby/1.8/bin ~/local/bin

if status --is-login
  set -x DYLD_LIBRARY_PATH /Users/alexrakoczy/local/lib/ $DYLD_LIBRARY_PATH
  launchctl load -w /Users/alexrakoczy/local/Cellar/mysql/5.1.41/com.mysql.mysqld.plist
  set -x RUBY_GC_MALLOC_LIMIT 50000000
  set -x RUBY_HEAP_MIN_SLOTS 500000
  set -x RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
  set -x RUBY_HEAP_SLOTS_INCREMENT 250000

  set -x EDTIOR vim
end
