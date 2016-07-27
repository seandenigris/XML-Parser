tests
testNextPutByteOrderMark
	| adapter |

	adapter := self newAdapter.
	self
		assert: adapter nextPutByteOrderMark == adapter;
		assert: adapter contents = self streamConverterClass byteOrderMark.