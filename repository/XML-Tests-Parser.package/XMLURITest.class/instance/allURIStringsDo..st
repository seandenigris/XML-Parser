enumerating
allURIStringsDo: aBlock
	aBlock
		value: '';
		value: '/';
		value: self absolute;
		value: self absoluteDir;
		value: self absoluteDirRelativeCombined;
		value: self absoluteRelativeCombined;
		value: self domainURIString;
		value: self domainURIWithPortString;
		value: self emailURIString;
		value: self fileURIWithHostString;
		value: self fileURIString;
		value: self fragment;
		value: self fullURIString;
		value: self fullURIWithPortString;
		value: self queryString;
		value: self relative;
		value: self relativeAbsoluteCombined;
		value: self schemelessURIString;
		value: self schemelessURIWithPortString