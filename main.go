package main

import (
	"os"

	"github.com/glanceapp/glance/internal/glance"
)

func main() {
	// For deployment, if no config file is found, create a default one
	if _, err := os.Stat("glance.yml"); os.IsNotExist(err) {
		// Create a minimal default configuration
		defaultConfig := `pages:
  - name: Home
    columns:
      - size: small
        widgets:
          - type: clock
          - type: weather
            location: New York, NY
            units: imperial
      - size: full
        widgets:
          - type: rss
            feeds:
              - url: https://news.ycombinator.com/rss
                title: Hacker News
            limit: 10
      - size: small
        widgets:
          - type: markets
            markets:
              - symbol: AAPL
                name: Apple
              - symbol: GOOGL
                name: Google
              - symbol: MSFT
                name: Microsoft`
		
		err := os.WriteFile("glance.yml", []byte(defaultConfig), 0644)
		if err != nil {
			panic(err)
		}
	}
	
	os.Exit(glance.Main())
}
