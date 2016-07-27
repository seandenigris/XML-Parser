private
addSpaceFor: aCharacter
	(lastChar == nil
		or: [lastChar isSeparator
			or: [aCharacter isSeparator]])
		ifFalse: [stream space]