private
filteredSlaveStack
	"skip process creation context"
	| firstInterestingContext |
	firstInterestingContext := interruptedContext stack
		detect: [ :ctxt |
			ctxt notNil and: [
				(ctxt receiver isKindOf: TKTTask) and: [
					ctxt selector = #value ] ] ]
		ifNone: [  ^ super filteredSlaveStack ].
		
	^ interruptedContext stack copyUpTo: firstInterestingContext