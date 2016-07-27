visiting
visitReference: aDirectoryEntry
	| fileReference pathSegments basename |

	fileReference := aDirectoryEntry asFileReference.
	pathSegments := fileReference pathSegments.
	basename := fileReference basename asLowercase.
	(fileReference isDirectory
		or: [(skipFilesInBase and: [pathSegments allButLast last = suite])
			or: [basename = (suite, '.xml')
				or: [pathSegments includes: 'out']]])
		ifTrue: [^ self].

	(self entityExtensions anySatisfy: [:extension |
		basename endsWith: extension])
		ifTrue: [
			self entityFiles add: fileReference.
			^ self].

	(basename endsWith: '.xml')
		ifFalse: [^ self].
	(pathSegments anySatisfy: [:segment |
		self failingNamePatterns anySatisfy: [:pattern |
			segment includesSubstring: pattern]])
		ifTrue: [self failingTestFiles add: fileReference]
		ifFalse: [self passingTestFiles add: fileReference].