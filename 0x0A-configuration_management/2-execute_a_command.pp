# Define the exec resource to kill the process

exec { 'killmenow':
  # Specify the command to be executed
  command     => 'pkill killmenow',
  # Ensure the process is killed only when the manifest is applied
  refreshonly => true,
  # Only execute the command if the process is running
  onlyif      => 'pgrep killmenow',
}
