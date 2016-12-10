private
filteredSlaveStack
	"skip process creation context"
	| firstInterestingContext |
	firstInterestingContext := interruptedContext stack
		detect: [ :ctxt |
			ctxt sender notNil and: [
				ctxt sender receiver class = TKTProcess and: [
					ctxt sender selector = #privateExecution ] ] ]
		ifNone: [  ^ super filteredSlaveStack ].
		
	^ interruptedContext stack copyUpTo: firstInterestingContext