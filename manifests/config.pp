# tomcat configuration file
class tomcat::config (

  String $tomcat_cfg_loaded,
  String $tomcat_base,
  String $java_home,
  String $catalina_home,
  String $catalina_tmpdir,
  String $security_manager,
){

  file { '/etc/tomcat/tomcat.conf' :
  content =>  template('tomcat/tomcat.erb'),
  mode   => '0644',
  owner  => 'tomcat',
  group  => 'tomcat',
  notify =>  Service['tomcat'],

  }

}
