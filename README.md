# PDF Generator

This PDF Generator Lightning Web Component (LWC) provides the capability to generate customized PDF files dynamically using the jsPDF library. It retrieves data from Salesforce using Apex, formats it into tables, and offers multiple styles and layouts for enhanced readability.

### Features
- Dynamic Data Fetching : Retrieves Salesforce sobject records via Apex
- PDF Creation : Utilizes the jsPDF library to generate PDF documents with structured tables and customizable themes (grid, plain, and striped).
- Table Styles and Layouts :
    1. Demonstrates different table styles for headers and alignment (left, right, center).
    2. Displays text, paragraphs, and styled normal text within the document.
- Download Functionality : Automatically generates and downloads the PDF with a timestamped filename.

### Usage
- Include the jsPDF library as a static resource in your Salesforce org.
- Deploy the Apex class AccountController with the getAccounts method to fetch account records.
- Deploy the provided LWC code (PdfGeneratorDemo) and add it to a Lightning Page.
- Click the "Print" button to generate and download the PDF file.

### Technical Highlights
- Table Customization: Supports custom headers, alignment, and styles for better presentation.
- Dynamic File Naming: Automatically names the downloaded PDF with the current date and time in a user-friendly format.
- Error Handling: Handles errors gracefully if data retrieval or PDF generation fails.
