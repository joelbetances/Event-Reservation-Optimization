#!/bin/bash

# Ensure required packages are installed
sudo apt-get update
sudo apt-get install -y curl jq

# Function to configure Zapier integration
configure_zapier() {
  ZAPIER_CONFIG_FILE="configs/zapier_config.json"

  if [ ! -f "$ZAPIER_CONFIG_FILE" ]; then
    echo "Zapier configuration file not found!"
    exit 1
  fi

  ZAPIER_WEBHOOK_URL=$(jq -r '.zapier_integration.boothbook_webhook' "$ZAPIER_CONFIG_FILE")
  GOOGLE_SHEETS_WEBHOOK_URL=$(jq -r '.zapier_integration.google_sheets_webhook' "$ZAPIER_CONFIG_FILE")

  echo "Configuring Zapier integration..."
  curl -X POST -H "Content-Type: application/json" -d @"$ZAPIER_CONFIG_FILE" "$ZAPIER_WEBHOOK_URL"
  curl -X POST -H "Content-Type: application/json" -d @"$ZAPIER_CONFIG_FILE" "$GOOGLE_SHEETS_WEBHOOK_URL"

  echo "Zapier integration configured successfully!"
}

# Call the function to configure Zapier integration
configure_zapier
