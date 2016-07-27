tests
testStreamReadingPortability
	| adapter stream |

	adapter := self newAdapter.
	stream := XMLExceptionRaisingReadStream on: adapter stream.
	adapter on: stream.
	self outputCollection do: [:each |
		self
			deny: adapter atEnd;
			assert: adapter peek = each;
			assert: adapter next = each].
	self assert: adapter atEnd.
	self
		shouldnt: [
			adapter
				peek;
				next]
		raise: Error.
	self
		assert: adapter peek isNil;
		assert: adapter next isNil.

	self assert: stream atEnd.
	self should: [stream peek] raise: Error.
	self should: [stream next] raise: Error.