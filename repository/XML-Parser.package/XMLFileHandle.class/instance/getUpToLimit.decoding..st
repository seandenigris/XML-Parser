retrieving
getUpToLimit: aMaxSize decoding: aBoolean
	| stream contents |

	stream :=
		self
			streamGetUpToLimit: aMaxSize
			decoding: aBoolean.
	contents := stream contents.
	stream close.

	^ contents.