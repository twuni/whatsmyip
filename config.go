package main

import (
	"os"
	"strconv"
)

type Config struct {
	IPAddress          string
	TCPPort            uint16
	TLSCertificatePath string
	TLSKeyPath         string
}

func NewConfig() Config {
	config := Config{}
	config.IPAddress = os.Getenv("IP_ADDRESS")

	port, _ := strconv.ParseUint(os.Getenv("TCP_PORT"), 10, 16)
	config.TCPPort = uint16(port)

	config.TLSCertificatePath = os.Getenv("TLS_CERTIFICATE_PATH")
	config.TLSKeyPath = os.Getenv("TLS_KEY_PATH")
	return config
}
