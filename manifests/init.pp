class tomcat {

  include tomcat::install
  include tomcat::service
  include tomcat::config
}
