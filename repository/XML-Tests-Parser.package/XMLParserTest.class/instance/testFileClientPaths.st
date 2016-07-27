tests
testFileClientPaths
	| fileClient cwd |

	fileClient := XMLFileClient defaultImplementation new.
	cwd := fileClient currentWorkingDirectory.
	self
		assert: (fileClient combineRelative: '/nonrelative' withBase: cwd) = '/nonrelative';
		assert: (fileClient combineRelative: 'relative' withBase: cwd) = (cwd, '/relative');
		assert: (fileClient combineRelative: '../../relative' withBase: cwd) = (cwd, '/../../relative');
		assert: (fileClient combineRelative: './relative' withBase: cwd) = (cwd, '/relative');
		assert: (fileClient combineRelative: '.relative' withBase: cwd) = (cwd, '/.relative').