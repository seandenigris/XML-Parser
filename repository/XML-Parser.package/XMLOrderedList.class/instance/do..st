enumerating
do: aBlock
	"reimplemented for performance"
	1 to: collection size do: [:i | aBlock value: (collection at: i)]