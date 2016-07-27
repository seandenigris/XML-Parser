converting
asDictionary
	| dictionary |

	dictionary := OrderPreservingDictionary new: self size withDefaultValue: ''.
	self do: [:each | dictionary at: each name put: each value].
	^ dictionary.