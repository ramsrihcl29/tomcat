#start tomcat service on centos

class tomcat::service {

  service {'tomcat':
  ensure => running,

  }

}
