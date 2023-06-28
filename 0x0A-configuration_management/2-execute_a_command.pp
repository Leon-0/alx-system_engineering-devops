# kill a process named 'killmenow'

# Define the exec resource to kill the process
exec { 'killmenow':
  command     => 'pkill killmenow',
  refreshonly => true,
  onlyif      => 'pgrep killmenow',
}

