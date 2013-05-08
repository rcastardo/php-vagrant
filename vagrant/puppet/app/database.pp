class app::database {

    mysql::db { $vhost:
      user     => $vhost,
      password => $vhost,
      grant    => ['all'],
    }

    mysql::db { 'remote_host':
      user     => $vhost,
      password => $vhost,
      #host     => $::ipaddress,
      host     => '33.33.33.1', #internal ip address for mac
      grant    => ['all'],
    }
}
