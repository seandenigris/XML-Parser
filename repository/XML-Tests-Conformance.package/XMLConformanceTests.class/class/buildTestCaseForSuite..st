building subclasses
buildTestCaseForSuite: aSuite
	| testCaseClass fileVisitor badSourceFiles |

	testCaseClass := self createSubclassForSuite: aSuite.
	fileVisitor :=
		XMLConformanceFileVisitor
			suite: aSuite
			skipFilesInBase: (self suitesWithSkippableBases includes: aSuite).
	(PreorderGuide for: fileVisitor) show: (self fileReferenceForSuite: aSuite).

	badSourceFiles := Set new.
	(fileVisitor passingTestFiles,
		fileVisitor failingTestFiles,
		fileVisitor entityFiles) do: [:each |
			[self
				buildSourceFileClassMethodFor: each
				in: testCaseClass]
				on: Error
				do: [:error | badSourceFiles add: each]].

	fileVisitor passingTestFiles do: [:each |
		(badSourceFiles includes: each)
			ifFalse: [
				self
					buildPassingTestMethodFor: each
					in: testCaseClass]].
	fileVisitor failingTestFiles do: [:each |
		(badSourceFiles includes: each)
			ifFalse: [
				self
					buildFailingTestMethodFor: each
					in: testCaseClass]].