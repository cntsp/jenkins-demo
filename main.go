package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"os"
)

func hello(c *gin.Context) {
	branch_name := os.Getenv("branch")
	c.HTML(http.StatusOK,"index.html", branch_name)
}

func main() {
	r := gin.Default()
	r.LoadHTMLFiles("./index.html")
	r.GET("/", hello)
	r.Run()
}