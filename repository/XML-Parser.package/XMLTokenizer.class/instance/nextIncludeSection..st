tokenizing
nextIncludeSection: parseSection
	| section |
	"Read the file up to the next include section delimiter and parse it if parseSection is true"

	
	section := streamReader nextUpToAll: ']]>'.
	parseSection
		ifTrue: [streamReader pushStream: (ReadStream on: section)]