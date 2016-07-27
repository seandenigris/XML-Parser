tokenizing
nextComment
	| nextChar |

	"Skip first -"
	streamReader next.
	self expectNext: $-.

	writeStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $-
			and: [(streamReader peek) == $-]]]
		whileFalse: [writeStream nextPut: nextChar].
	self
		expectNext: $-;
		expectTerminator: $>.

	driver handleComment: writeStream contents.