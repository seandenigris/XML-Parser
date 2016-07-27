tokenizing
nextComment
	| comment nextChar |

	"Skip first -"
	streamReader next.
	self expectNext: $-.

	comment := streamWriter writeWith: [:writeStream |
		[streamReader atEnd
			or: [(nextChar := streamReader next) == $-
				and: [(streamReader peek) == $-]]]
			whileFalse: [writeStream nextPut: nextChar].
		writeStream contents].
	self
		expectNext: $-;
		expectTerminator: $>.

	driver handleComment: comment.