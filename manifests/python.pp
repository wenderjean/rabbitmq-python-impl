Exec {
  path => ["/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/"],
  user => "root"
}

include base
include python
