copying
copy
	| copy |

	copy := super copy.
	configuration "so all copied descendants have the same config"
		ifNotNil: [copy configuration: configuration copy].
	^ copy.