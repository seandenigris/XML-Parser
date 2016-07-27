copying
copyReplaceFrom: aStart to: aStop with: aReplacementCollection
	| start stop |

	"bound the start and stop so they are always in range"
	start := (aStart max: 1) min: self size + 1.
	stop := (aStop max: start - 1) min: self size.
	^ self newWithCollection:
		(collection
			copyReplaceFrom: start
			to: stop
			with: aReplacementCollection)