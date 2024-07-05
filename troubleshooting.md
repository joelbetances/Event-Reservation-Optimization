# Troubleshooting Guide

This guide provides solutions to common issues encountered during the setup and configuration of event reservation optimization.

## Common Issues

### Issue: Inquiries Not Captured in Google Sheets

- **Solution**:
    - Verify that the webhook URL in BoothBook is correctly configured.
    - Check the Zapier integration settings to ensure the trigger and action steps are set up correctly.
    - Ensure that the Google Sheet ID and worksheet name in the `zapier_config.json` file are correct.

### Issue: Incorrect Data Format in Google Sheets

- **Solution**:
    - Verify that the column names in the Google Sheet match the data fields being sent from BoothBook.
    - Check the Zapier action step settings to ensure data is mapped correctly to the Google Sheet columns.

### Issue: Zapier Integration Errors

- **Solution**:
    - Review the error logs in Zapier to identify any issues with the integration.
    - Ensure that all required fields in the `zapier_config.json` file are correctly configured.
    - Contact Zapier support if the issue persists.

For additional support, refer to the [Zapier Help Center](https://zapier.com/help).
