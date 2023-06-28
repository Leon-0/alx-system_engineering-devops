# kill a process named 'killmenow'

exec { 'killmenow':
  command     => 'pkill -f killmenow',
  refreshonly => true
  path        => '/usr/bin:/usr/sbin:/bin:/sbin',
  onlyif      => 'pgrep -f killmenow',
}
