package main

import (
	"net/http"
	"log"
)

func main() {
	dir := http.Dir("./..")
	http.Handle("/", http.FileServer(dir))
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		log.Fatal(err)
	}
}
