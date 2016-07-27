tokenizing
nextComment
	| comment nextChar |

	"Skip first -"
	streamReader next.
	self expectNext: $-.

	writeStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $-
			and: [(streamReader peek) == $-]]]
		whileFalse: [writeStream nextPut: nextChar].
	comment := writeStream contents.

	self
		expectNext: $-;
		expectTerminator: $>.

	driver handleComment: comment.