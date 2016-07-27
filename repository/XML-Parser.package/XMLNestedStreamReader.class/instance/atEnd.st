testing
atEnd
	peekChar == nil
		ifFalse: [^ false].
	stream atEnd
		ifFalse: [^ false].
	"to:do: for speed"
	1 to: nestedStreams size do: [:i |
		(nestedStreams at: i) key atEnd
			ifFalse: [^ false]].
	^ true.