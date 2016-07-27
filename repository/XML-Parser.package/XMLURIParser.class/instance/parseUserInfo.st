parsing
parseUserInfo
	| userInfo oldPosition |

	oldPosition := self position.
	userInfo := self nextPercentEncodedDelimitedBy: UserInfoDelimiters.
	(self peekFor: $@)
		ifTrue: [^ userInfo]
		ifFalse: [
			self position: oldPosition.
			^ ''].