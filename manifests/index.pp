#tomcat sample index.html file

class tomcat::index (
  String $environment,
  String $deploy_samplewar_path,

){

  file {"${deploy_samplewar_path}/sample/index.html" :
  content => template('tomcat/index.erb'),
  notify  => Service['tomcat'],

  }
}
