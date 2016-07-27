accessing
attributes
	| dictionary |

	dictionary := OrderPreservingStringDictionary new: self size.
	self do: [:each |
		dictionary
			at: each name
			put: each value].
	^ dictionary.