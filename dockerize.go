package main

import (
	"fmt"

	"github.com/fatih/color"
)

func main() {
	greeting := "Hello world"
	greet(greeting)
}

func greet(greetingArg string) {
	color.Blue("This is my greeting:")
	fmt.Println(greetingArg)
}
