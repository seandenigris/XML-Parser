tokenizing
nextComment
	| string |
	"Skip first -"
	streamReader next.
	streamReader next == $-
		ifFalse: [self errorExpected: 'second comment $-'].
	string := streamReader nextUpToAll: '-->'.
	self handleComment: string