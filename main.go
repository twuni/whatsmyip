package main

import (
	"fmt"
	"net/http"
)

func main() {
	config := NewConfig()
	server := &http.Server{
		Addr:    fmt.Sprintf("%s:%d", config.IPAddress, config.TCPPort),
		Handler: &Context{},
	}

	server.ListenAndServeTLS(config.TLSCertificatePath, config.TLSKeyPath)
}
