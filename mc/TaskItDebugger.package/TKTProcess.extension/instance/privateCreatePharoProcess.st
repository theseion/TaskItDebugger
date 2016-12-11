*TaskItDebugger
privateCreatePharoProcess
	^ process := UserProcess forContext: self createContext priority: self spawnPriority