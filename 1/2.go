package main

import "fmt"
import "strconv"

func main() {
	fmt.Println(solve("1212"))
	fmt.Println(solve("1221"))
	fmt.Println(solve("123425"))
	fmt.Println(solve("123123"))
	fmt.Println(solve("12131415"))
}

func solve(input string) int64 {
	step := len(input) / 2
	input += input
	
	var sum int64 = 0
	for i := 0; i < len(input) / 2; i++ {
		if input[i] == input[i + step] {
			x, _ := strconv.ParseInt(string(input[i]), 10, 32) //Pretty sure there's a better way to do this
			sum += x
		}
	}

	return sum
}