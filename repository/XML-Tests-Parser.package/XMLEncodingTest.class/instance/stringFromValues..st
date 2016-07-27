private
stringFromValues: aCollection
	"avoid asString for portability"
	^ String withAll: (aCollection collect: [:each | Character value: each])