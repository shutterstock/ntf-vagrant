package { 'redis-server':
  ensure => present,
}

class { 'mysql::server':
  config_hash => { 'root_password' => 'root', 'bind_address' => '0.0.0.0' },
}

mysql::db { 'ntf':
  user     => 'ntf',
  password => 'ntf',
  host     => '%',
  grant    => ['all'],
}

mysql::db { 'ntf_test':
  user     => 'ntf_test',
  password => 'ntf_test',
  host     => '%',
  grant    => ['all'],
}
