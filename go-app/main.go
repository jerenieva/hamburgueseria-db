package main

import (
	"fmt"
	"net/http"
)

func main() {
	err := conectarDB()
	if err != nil {
		panic(err)
	}

	http.HandleFunc("/productos", obtenerProductos)

	fmt.Println("Servidor corriendo en http://localhost:8080")
	http.ListenAndServe(":8080", nil)
}