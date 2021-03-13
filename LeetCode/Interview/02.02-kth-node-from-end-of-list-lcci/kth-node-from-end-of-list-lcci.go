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

func kthToLast(head *ListNode, k int) int {
	if head == nil {
		fmt.Println("head is illegal.")
		return -1
	}

	slowPtr := head
	fastPtr := head

	for fastPtr != nil && k > 0 {
		fastPtr = fastPtr.Next
		k--
	}

	for fastPtr != nil {
		slowPtr = slowPtr.Next
		fastPtr = fastPtr.Next
	}

	return slowPtr.Val
}

func main() {
	head := ListNode{1, nil}
	head.Next = &ListNode{2, nil}
	head.Next.Next = &ListNode{3, nil}

	fmt.Println(kthToLast(&head, 2))
}
