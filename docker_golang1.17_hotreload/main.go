package main

import (
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, rq *http.Request) {
		w.Write([]byte("hi, js2"))
	})
	http.ListenAndServe(":5000", nil)
}
