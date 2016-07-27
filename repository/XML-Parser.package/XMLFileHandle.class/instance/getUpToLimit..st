retrieving
getUpToLimit: aMaxSize
	| stream contents |

	stream := self streamGetUpToLimit: aMaxSize.
	contents := stream contents.
	stream close.

	^ contents.