package main

import (
	"database/sql"
	_ "github.com/lib/pq"
)

var db *sql.DB

func conectarDB() error {
	connStr := "user=postgres password=ambar1127 dbname=hamburgueseria_db sslmode=disable"

	var err error
	db, err = sql.Open("postgres", connStr)
	if err != nil {
		return err
	}

	return db.Ping()
}