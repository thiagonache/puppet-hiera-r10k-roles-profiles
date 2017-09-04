class profiles::webserver {
  class { 'nginx': }
  nginx::resource::server { 'test.example.com':
    listen_port => hiera('application.frontend.port'),
    proxy       => hiera('application.backend.endpoint')
  }
}
