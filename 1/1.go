package main

import "fmt"
import "strconv"

func main() {
	fmt.Println(solve("1122"))
	fmt.Println(solve("1111"))
	fmt.Println(solve("1234"))
	fmt.Println(solve("91212129"))
}

func solve(input string) int64 {
	input += string(input[0])
	var sum int64 = 0
	for i := 0; i < len(input) - 1; i++ {
		if input[i] == input[i + 1] {
			x, _ := strconv.ParseInt(string(input[i]), 10, 32) //Pretty sure there's a better way to do this
			sum += x
		}
	}

	return sum
}