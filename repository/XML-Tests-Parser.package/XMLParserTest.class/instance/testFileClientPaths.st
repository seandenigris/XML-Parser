tests
testFileClientPaths
	| fileClient cwd |

	fileClient := XMLFileClient defaultImplementation new.
	cwd := fileClient currentWorkingDirectory.
	self
		assert: (fileClient combineRelative: 'relative' withBase: 'relative/path') = 'relative/relative';
		assert: (fileClient combineRelative: 'relative/path' withBase: 'relative/path') = 'relative/relative/path';
		assert: (fileClient combineRelative: 'relative' withBase: cwd) = (cwd, '/relative');
		assert: (fileClient combineRelative: '/nonrelative' withBase: cwd) = '/nonrelative';
		assert: (fileClient combineRelative: 'relative' withBase: cwd) = (cwd, '/relative');
		assert: (fileClient combineRelative: '../../relative' withBase: cwd) = (cwd, '/../../relative');
		assert: (fileClient combineRelative: './relative' withBase: cwd) = (cwd, '/relative');
		assert: (fileClient combineRelative: '.relative' withBase: cwd) = (cwd, '/.relative').