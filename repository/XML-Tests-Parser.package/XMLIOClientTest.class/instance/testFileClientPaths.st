tests
testFileClientPaths
	| fileClient cwd cwdParent |

	fileClient := XMLFileClient defaultImplementation new.
	cwd := fileClient currentWorkingDirectory.
	cwdParent := cwd copyUpToLast: $/.
	self
		assert: cwd first == $/;
		deny: cwd last == $/;
		assert: (fileClient combineRelative: 'relative' withBase: 'relative/path') = 'relative/relative';
		assert: (fileClient combineRelative: 'relative/path' withBase: 'relative/path') = 'relative/relative/path';
		assert: (fileClient combineRelative: 'relative' withBase: cwd) = (cwdParent, '/relative');
		assert: (fileClient combineRelative: '/nonrelative' withBase: cwd) = '/nonrelative';
		assert: (fileClient combineRelative: '../../relative' withBase: cwd) = (cwdParent, '/../../relative');
		assert: (fileClient combineRelative: './relative' withBase: cwd) = (cwdParent, '/relative');
		assert: (fileClient combineRelative: '.relative' withBase: cwd) = (cwdParent, '/.relative').