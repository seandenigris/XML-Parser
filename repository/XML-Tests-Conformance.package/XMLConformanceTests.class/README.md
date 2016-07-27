This class generates subclass TestCases from the W3C's XML test suite, which can be obtained from this URL: http://www.w3.org/XML/Test/

To rebuild from source, unzip the archive in your image directory, then evaluate:
	self buildTestCases.

To  make failing tests skippable or update the lists of skippable tests in subcalsses (if a skipped test has possibly been fixed so it will pass), evaluate:
	self buildSkippableTestsMethodsFromFailures.