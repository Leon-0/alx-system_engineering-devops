#installs Flask: version 2.1.0 form Pip3

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
