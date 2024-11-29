# PDF Generator LWC Component

This PDF Generator Lightning Web Component (LWC) provides the capability to generate customized PDF files dynamically using the jsPDF library. It retrieves data from Salesforce using Apex, formats it into tables, and offers multiple styles and layouts for enhanced readability.

### Features
- Dynamic Data Fetching : Retrieves Salesforce sobject records via Apex
- PDF Creation : Utilizes the jsPDF library to generate PDF documents with structured tables and customizable themes.
- Table Styles and Layouts :
    1. Demonstrates different table styles for headers and alignment (left, right, center).
    2. Displays text, paragraphs, and styled normal text within the document.
- Download Functionality : Automatically generates and downloads the PDF with a timestamped filename.

### Usage
- Include the jsPDF (jsPDF static resource link) library as a static resource in your Salesforce org.
- Deploy the Apex class AccountTriggerHandler (link) with the getAccounts method to fetch account records.
- Deploy the provided LWC code (PdfGeneratorDemo) (link) and add it to a Lightning Page.
- Click the "Print" button to generate and download the PDF file.

### Technical Highlights
- Table Customization: Supports custom headers, alignment, and styles for better presentation.
- Dynamic File Naming: Automatically names the downloaded PDF with the current date and time in a user-friendly format.
- Error Handling: Handles errors gracefully if data retrieval or PDF generation fails.


> #### Table Design - Grid, Plain & Striped

###### Grid View Table
~~~
doc.autoTable({
    showHead: 'firstPage',
    theme : 'grid',
    head: [tableHeader],
    body: tableBody
})
~~~

###### Plain View Table
~~~
doc.autoTable({
    showHead: 'firstPage',
    theme : 'plain',
    head: [tableHeader],
    body: tableBody
})
~~~

###### Striped View Tablw
~~~
doc.autoTable({
    showHead: 'firstPage',
    theme : 'striped',
    head: [tableHeader],
    body: tableBody
})
~~~

> #### Headers Different Alignment View

###### Left Aligned Header
~~~
let leftHeader = 'LeftHeader';
doc.autoTable({
    margin: { top: 12, right : 20 },
    theme : 'striped',
    styles:{fontSize:11, halign: 'left', fontWeight: 700},
    head: [[leftHeader]]
})
~~~

###### Right Aligned Header
~~~
let rightHeader = 'RightHeader';
doc.autoTable({
    margin: { bottom: 0, right : 20 },
    theme : 'grid',
    styles:{fontSize:11, halign: 'right', fontWeight: 600},
    head: [[rightHeader]]
})
~~~

###### Center Aligned Header
~~~
let centerHeader = 'CenterHeader';
doc.autoTable({
    margin: { bottom: 0, right : 20 },
    theme : 'striped',
    styles:{fontSize:11, halign: 'center', fontWeight: 600},
    head: [[centerHeader]]
})
~~~

> #### Paragraph View with italic style

~~~
let paragraph = 'Salesforce Inc. is a cloud computing and social enterprise software-as-a-service (SaaS) provider based in San Francisco. Founded in March 1999 by former Oracle executive Marc Benioff, Parker Harris, Dave Moellenhoff and Frank Dominguez, the company started off as a customer relationship management (CRM) platform vendor.';
doc.autoTable({
    margin: { bottom: 0, right : 20 },
    theme : 'plain',
    styles:{fontSize:11, halign: 'center', fontWeight: 600, fontStyle: 'italic'},
    head: [[paragraph]]
})
~~~

> #### Normal text with highlighted background

~~~
let normalText = 'Normal Text For Testing';
doc.autoTable({
    margin: { bottom: 0, right : 20 },
    theme : 'plain',
    styles:{fontSize:11, halign: 'center', fontWeight: 600, fillColor: [180, 180, 180]},
    head: [[normalText]]
})
~~~
