building subclasses
buildTestCaseForSuite: aSuite
	| testCaseClass fileVisitor badSourceFiles |

	testCaseClass := self createSubclassForSuite: aSuite.
	fileVisitor :=
		XMLConformanceFileVisitor
			suite: aSuite
			skipFilesInBase: (self suitesWithSkippableBases includes: aSuite).
	(PreorderGuide for: fileVisitor) show: (self directoryForSuite: aSuite).

	badSourceFiles := OrderedCollection new.
	(fileVisitor passingTestFiles,
		fileVisitor failingTestFiles,
		fileVisitor entityFiles) do: [:each |
			[self
				buildSourceFileMethodFor: each
				class: testCaseClass]
				on: ZnCharacterEncodingError
				do: [:error | badSourceFiles add: each]].

	(fileVisitor passingTestFiles copyWithoutAll: badSourceFiles)
		do: [:each |
			self
				buildPassingTestMethodFor: each
				in: testCaseClass].
	(fileVisitor failingTestFiles copyWithoutAll: badSourceFiles)
		do: [:each |
			self
				buildFailingTestMethodFor: each
				in: testCaseClass].