testing
hasAttributes
	"nil test and size check to avoid lazy initializing"
	^ attributes notNil
		and: [attributes size > 0]