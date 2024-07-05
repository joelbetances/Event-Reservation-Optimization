# Event Reservation Optimization Setup Guide

This guide will walk you through the steps to set up and configure the event reservation optimization using Zapier, BoothBook, and Google Sheets.

## Prerequisites

- BoothBook account with API access
- Zapier account
- Google Sheets with appropriate access permissions

## Steps

1. **Create a Google Sheet**:
    - Create a Google Sheet to store event reservation inquiries.
    - Name the worksheet `Inquiries` and ensure it has columns for all required data fields (e.g., Name, Email, Event Date).

2. **Set Up BoothBook**:
    - Log in to your BoothBook account.
    - Navigate to the API settings and generate an API key.
    - Ensure the webhook URL is set up to send inquiries to Zapier.

3. **Configure Zapier**:
    - Log in to your Zapier account.
    - Create a new Zap and select BoothBook as the trigger app.
    - Set the trigger event to `new_inquiry` and paste the webhook URL from BoothBook.
    - Add an action step to create a new row in the Google Sheet for each inquiry.

4. **Automate Data Entry**:
    - Use the provided `zapier_config.json` file to set up the integration.
    - Run the `setup.sh` script to configure Zapier and automate data entry.

5. **Test the Integration**:
    - Submit a test inquiry through BoothBook.
    - Verify that the data is captured in the Google Sheet.

6. **Monitor and Optimize**:
    - Regularly monitor the integration to ensure it is functioning correctly.
    - Optimize the setup based on feedback and changing requirements.

For additional support, refer to the [Zapier Help Center](https://zapier.com/help).
