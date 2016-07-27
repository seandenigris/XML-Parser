tests
testStreamReadingPortability
	| stream integerReader integer atEnd |

	stream := XMLExceptionRaisingReadStream on: '123abc'.
	integerReader := XMLIntegerReader on: stream.
	self
		shouldnt: [
			integer := integerReader nextIntegerWithBase: 16.
			atEnd := integerReader atEnd.
			integerReader
				nextInteger;
				nextIntegerWithBase: 16;
				nextIntegerWithBase: 16 upTo: 1;
				nextIntegerWithBase: 16 startingWithAny: 'x' orBase: 10;
				peek;
				next]
		raise: Error.
	self
		assert: integer = 16r123ABC;
		assert: atEnd.

	self assert: stream atEnd.
	self should: [stream peek] raise: Error.
	self should: [stream next] raise: Error.