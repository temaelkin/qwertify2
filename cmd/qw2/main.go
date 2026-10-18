// qw2 (qwertify2) is a CLI password manager.
package main

import (
	"log"
	"os"
)

func main() {
	if err := run(os.Args[1:]); err != nil {
		log.Fatal(err)
	}
}

func run([]string) error {
	return nil
}
