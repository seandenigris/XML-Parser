accessing
nextInteger
	"We re-implement integer reading here because the impelmentation of Integer>>readFrom: expects
	the underlying stream to be skip:able."
	| base |

	self peek == $x
		ifTrue: [
			self next.
			base := 16]
		ifFalse: [base := 10].

	^ XMLIntegerReader
		readFrom: self
		withBase: base.