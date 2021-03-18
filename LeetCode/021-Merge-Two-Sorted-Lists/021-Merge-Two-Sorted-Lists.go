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

func mergeTwoLists_1(l1 *ListNode, l2 *ListNode) *ListNode {
	head := &ListNode{0, nil}
	current := head

	for l1 != nil && l2 != nil {
		if l1.Val < l2.Val {
			current.Next = l1
			l1 = l1.Next
		} else {
			current.Next = l2
			l2 = l2.Next
		}
		current = current.Next
	}

	if l1 == nil {
		current.Next = l2
	}

	if l2 == nil {
		current.Next = l1
	}

	return head.Next
}

func mergeTwoLists_2(l1 *ListNode, l2 *ListNode) *ListNode {
	if l1 == nil {
		return l2
	}

	if l2 == nil {
		return l1
	}

	if l1.Val > l2.Val {
		l2.Next = mergeTwoLists_2(l1, l2.Next)
		return l2
	} else {
		l1.Next = mergeTwoLists_2(l1.Next, l2)
		return l1
	}
}

func main() {
	l1 := &ListNode{1, nil}
	l1.Next = &ListNode{2, nil}
	l1.Next.Next = &ListNode{3, nil}

	l2 := &ListNode{1, nil}
	l2.Next = &ListNode{2, nil}
	l2.Next.Next = &ListNode{3, nil}

	// l := mergeTwoLists_1(l1, l2)
	l := mergeTwoLists_2(l1, l2)
	for l != nil {
		fmt.Printf("%d, ", l.Val)
		l = l.Next
	}
}
