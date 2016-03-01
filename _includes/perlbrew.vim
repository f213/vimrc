" Enable perlbrew path
if has("gui_running") && filereadable("~/perl5/perlbrew/etc/bashrc")
  let $PATH=system("source ~/perl5/perlbrew/etc/bashrc; echo -n $PATH")
endif
