building subclasses
buildTestCases
	"self buildTestCases"

	self supportedTestSuites do: [:each | self buildTestCaseForSuite: each].
	self buildSkippableTestsMethodsFromFailures.