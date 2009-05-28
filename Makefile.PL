use 5.008009;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'MACSearch',
    VERSION           => '0.1', # finds $VERSION
    PREREQ_PM         => {Net::SNMP => 0,
                          Net::SNMP::Mixin::Dot1qFdb => 0,
			  DBI => 0,
			  DBD::SQLite => 0,
			  Getopt::Long => 0,
			 },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT       => 'Tool for using SNMP to query macs on switches',
       AUTHOR         => 'Chris Leishman <chris@leishman.org>') : ()),
    EXE_FILES         => [ 'bin/macsearch' ],
);
