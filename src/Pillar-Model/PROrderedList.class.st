"
I am an ordered list. I am typically used for numbered items.
"
Class {
	#name : #PROrderedList,
	#superclass : #PRList,
	#category : 'Pillar-Model-Document'
}

{ #category : #testing }
PROrderedList class >> isAbstract [
	^ false
]

{ #category : #visiting }
PROrderedList >> accept: aVisitor [
	aVisitor visitOrderedList: self
]
