parsing
parseUserInfo
	| userInfo oldPosition |

	oldPosition := self position.
	userInfo := self nextPercentEncodedDelimitedBy: ':/@?#'.
	(self peekFor: $@)
		ifTrue: [^ userInfo]
		ifFalse: [
			self position: oldPosition.
			^ ''].