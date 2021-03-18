package main

import "fmt"

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */


// ListNode Structure
type ListNode struct {
	Val  int
	Next *ListNode
}

func deleteDuplicates(head *ListNode) *ListNode {
	newHead := head
	
	for head != nil && head.Next != nil {
		if head.Next.Val == head.Val {
			head.Next = head.Next.Next
		} else {
			head = head.Next
		}
	}

	return newHead
}

func main() {
	l := &ListNode{1, nil}
	l.Next = &ListNode{2, nil}
	l.Next.Next = &ListNode{2, nil}

	l = deleteDuplicates(l)
	for l != nil {
		fmt.Printf("%d, ", l.Val)
		l = l.Next
	}
}
