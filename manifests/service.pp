# @summary
# Allow the apache servoce to restart when triggered
class apache::service {
  service { "apache_service":
    name       => $apache::service_name,
    ensure     => $apache::service_ensure,
    enable     => $apache::service_enable,
    hasrestart => true,
  }  
}
