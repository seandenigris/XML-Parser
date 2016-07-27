class initialization
initialize
	"self initialize"

	super initialize.

	(ListValueDelimiters := CharacterSet new)
		add: $|;
		add: $);
		addAll: Character separators