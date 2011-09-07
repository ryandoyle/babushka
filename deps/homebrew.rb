dep 'homebrew binary in place' do
  requires 'homebrew git repo'
  met? { which 'brew' }
  meet {
    cd var(:homebrew_prefix) do
      log_shell "Resetting to HEAD", "git reset --hard"
    end
  }
end

dep 'homebrew git repo' do
  requires_when_unmet 'writable.fhs', 'git'
  define_var :homebrew_prefix, :default => '/usr/local', :message => "Where would you like homebrew installed"
  setup {
    if Babushka::BrewHelper.present?
      set :homebrew_prefix, Babushka::BrewHelper.prefix # Use the existing homebrew install if there is one
    end
  }
  met? { File.exists? var(:homebrew_prefix) / '.git' }
  meet {
    git "git://github.com/mxcl/homebrew.git" do |path|
      log_shell "Gitifying #{var :homebrew_prefix}", "cp -r .git '#{var :homebrew_prefix}'"
    end
  }
end
