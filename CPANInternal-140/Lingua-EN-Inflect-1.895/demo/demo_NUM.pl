#! /usr/bin/perl -ws

use Lingua::EN::Inflect qw { classical NUM inflect };
use vars qw { $classical $modern };

classical if $classical && !$modern;

print "count inflection> ";
while (<>)
{
	chomp;
	exit if /^\.$/;
	if (/^\-classical$/)	{ classical ; print "[going classical]"}
	elsif (/^-modern$/)	{ classical 0; print "[going modern]" }
	else			
	{
		/\s*(\S+)\s+(.*)/ and
			print "            ", NUM($1), " ", inflect($2), "\n"
		or /\s*(\S*)/ and
			print "            ", inflect($1), "\n";
	}
	print "\ncount word> ";
}
