tests - explanation
testExplanationIsExceptionCatchedInFailingTest
	
	| docText doc bTester |
	docText := '[[[example=true
3 + ''12''
>>> 8		
]]]
'.
	doc := PRPillarParser new parse: docText.
	bTester := PRBookTesterVisitor new.
	bTester start: doc. 
	self assert: bTester validTests isEmpty.
	self assert: bTester failedTests size equals: 1.
	self assert: bTester failedTests first explanation 
		  equals: 'MessageNotUnderstood: Character>>adaptToNumber:andSend:'.