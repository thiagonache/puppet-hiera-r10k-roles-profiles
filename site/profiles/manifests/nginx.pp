class profiles::nginx {
  class { 'nginx': }
  nginx::resource::server { hiera('application.frontend.endpoint'):
    listen_port => hiera('application.frontend.port'),
    proxy       => hiera('application.backend.endpoint')
  }
}
