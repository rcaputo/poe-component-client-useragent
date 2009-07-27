use ExtUtils::MakeMaker;

open(CHANGES, ">>CHANGES") and close CHANGES;

WriteMakefile (
	NAME          => 'POE::Component::Client::UserAgent',
	VERSION_FROM  => 'UserAgent.pm',
	AUTHOR        => 'Rocco Caputo <rcaputo@cpan.org>',
	ABSTRACT      => 'LWP and LWP::Parallel based POE component.',
	PM            => {
		'UserAgent.pm' => '$(INST_LIBDIR)/UserAgent.pm'
	},
	PREREQ_PM => {
		POE             => 0.31,
		'LWP::Parallel' => 2.51
	},
  META_ADD     => {
    resources  => {
      license    => 'http://dev.perl.org/licenses/',
      repository => 'http://thirdlobe.com/svn/poco-client-ua/trunk'
    },
  },
  dist         => {
    COMPRESS   => 'gzip -9f',
    SUFFIX     => 'gz',
		PREOP      => (
			'svn-log.perl --repo https://thirdlobe.com/svn/poco-client-ua | ' .
			'tee ./$(DISTNAME)-$(VERSION)/CHANGES > ./CHANGES'
		),
	},
);
