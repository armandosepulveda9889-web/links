export GEM_HOME="./ruby/3.3.0/"
export PATH="$GEM_HOME/bin:$PATH"

bundle config set path '.'
bundle install
