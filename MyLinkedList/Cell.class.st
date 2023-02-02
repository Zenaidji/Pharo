Class {
	#name : #Cell,
	#superclass : #Object,
	#instVars : [
		'data',
		'next'
	],
	#category : #MyLinkedList
}

{ #category : #accessing }
Cell >> data [ 
^data
]

{ #category : #'instance creation' }
Cell >> newData:value [
 data:=value
]

{ #category : #'instance creation' }
Cell >> newNode:link [
	next:=link.
	
]

{ #category : #accessing }
Cell >> next [
	^next
]
