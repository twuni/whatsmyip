package main

import (
	"fmt"
	"net/http"
	"strings"
)

type Context struct{}

func (context *Context) ServeHTTP(response http.ResponseWriter, request *http.Request) {
	response.Write([]byte(fmt.Sprintf("%s\n", strings.Split(request.RemoteAddr, ":")[0])))
}
