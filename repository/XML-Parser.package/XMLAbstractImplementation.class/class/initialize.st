class initialization
initialize
	"self initialize"

	"clear cached implementations"
	self allSubclassesDo: [:each | each implementation: nil]