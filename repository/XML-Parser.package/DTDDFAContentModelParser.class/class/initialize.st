class initialization
initialize
	"self initialize"

	super initialize.

	(SpecialCharacters := CharacterSet new) addAll: '|,?*+()'