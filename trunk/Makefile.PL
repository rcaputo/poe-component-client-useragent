use ExtUtils::MakeMaker;

WriteMakefile (
	NAME => 'POE::Component::Client::UserAgent',
	VERSION_FROM => 'UserAgent.pm',
	AUTHOR => 'Rocco Caputo <troc+pcua@pobox.com>',
	ABSTRACT => 'LWP and LWP::Parallel based POE component.',
	PM => { 'UserAgent.pm' => '$(INST_LIBDIR)/UserAgent.pm' },
	PREREQ_PM => {
		POE => 0.1402,
		LWP::Parallel => 2.51
	}
);
