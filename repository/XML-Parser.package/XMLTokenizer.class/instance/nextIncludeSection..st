tokenizing
nextIncludeSection: parseSection
	| section |
	"Read the file up to the next include section delimiter and parse it if parseSection is true"

	
	section := self nextUpToAll: ']]>'.
	parseSection
		ifTrue: [
			self pushStream: (ReadStream on: section)]