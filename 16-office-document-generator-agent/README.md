# Office Document Generator Agent

**Demo Focus**: Demonstrates Code Interpreter's ability to create Word, Excel, and PowerPoint files

---

## Agent Builder Configuration

### 1. Name
```
Office Doc Creator
```
*Character limit: 30. Actual length: 18*

### 2. Description
```
Creates professional Word documents, Excel spreadsheets, and PowerPoint presentations from your data and instructions. Generates formatted reports, data tables, charts in Excel, and slide decks with visualizations. Upload data files or provide content, then ask for "Create a Word report" or "Generate a PowerPoint presentation with these charts." Perfect for analysts, managers, and anyone who needs to quickly create polished Office documents without manual formatting. Downloads ready-to-use .docx, .xlsx, and .pptx files.
```
*Character limit: 1,000. Actual length: 541*

### 3. Instructions
```
You are an agent that creates professional Microsoft Office documents using Python. You help users generate Word documents, Excel spreadsheets, and PowerPoint presentations with proper formatting.

Your behavior:
- Create Word documents (.docx) with headings, paragraphs, tables, and formatting
- Generate Excel spreadsheets (.xlsx) with data, formulas, charts, and styling
- Build PowerPoint presentations (.pptx) with slides, titles, content, and charts
- Format documents professionally with proper styles and layouts
- Include data visualizations in Excel and PowerPoint
- Add tables, lists, and structured content
- Apply corporate/professional styling
- Export downloadable Office files
- Explain the document structure and contents
- Suggest improvements for document layout

Your tone: Professional, helpful, and detail-oriented.

Key capabilities:
- Word: Reports, summaries, formatted documents, tables
- Excel: Data tables, formulas, pivot tables, charts, dashboards
- PowerPoint: Slide decks, data presentations, executive summaries
```
*Character limit: 8,000. Actual length: 927*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Optional Data Sources:
- **Embedded files**: Upload data files (CSV, JSON) to include in documents
  - sales-summary.csv (for Excel/PowerPoint demos)
  - meeting-notes.txt (for Word report demos)
  - budget-data.csv (for Excel dashboard demos)

**Note**: Up to 20 files, max 512MB each (30MB for Excel)

### 5. Capabilities

- ☑ **Create documents, charts, and code** (Code Interpreter) - **REQUIRED** (toggle ON)
- ☐ **Create images** (Image Generator) - Not needed

**What Code Interpreter Does for Office Files**:
- Uses `python-docx` library for Word documents
- Uses `openpyxl` or `xlsxwriter` for Excel files
- Uses `python-pptx` library for PowerPoint presentations
- Applies formatting, styles, and layouts
- Generates charts and visualizations
- Creates downloadable Office files

### 6. Starter Prompts

1. "Create a Word report summarizing quarterly sales performance"
2. "Generate an Excel spreadsheet with sales data and a pivot table"
3. "Build a PowerPoint presentation with 5 slides about our Q4 results"
4. "Create a Word document with a table comparing product features"
5. "Generate an Excel dashboard with charts showing revenue trends"
6. "Make a PowerPoint deck with charts from the uploaded data"
7. "Create a formatted Word meeting minutes document"
8. "Build an Excel financial report with formulas and conditional formatting"

---

## Mock Data Files

### Files in `mock-data/` folder:

1. **sales-summary.csv**
   - Quarterly sales data by region
   - Product categories and revenue
   - Used for Excel charts and PowerPoint slides

2. **meeting-notes.txt**
   - Meeting discussion points
   - Action items and decisions
   - Used for Word report generation

3. **budget-data.csv**
   - Department budgets and spending
   - Monthly breakdown
   - Used for Excel dashboard creation

---

## Demo Script

### Setup (5 minutes)

1. Go to [microsoft365.com/chat](https://microsoft365.com/chat)
2. Click **"Create agent"**
3. Copy **Name**, **Description**, **Instructions** from above
4. **Knowledge**:
   - Upload `sales-summary.csv`, `meeting-notes.txt`, `budget-data.csv` from `mock-data/` folder
5. **Capabilities**:
   - Toggle **"Create documents, charts, and code"** (Code Interpreter) to **ON** ⚠️ REQUIRED
6. **Starter Prompts**: Add all 8 prompts from above
7. Click **"Create"**

---

### Demo 1: Create a Word Report (3 minutes)

**Scenario**: Generate a formatted Word document with meeting minutes

- **Ask**: "Create a Word document with meeting minutes. Include an agenda table, discussion points, and action items section. Use professional formatting."
- **Expected**: Agent generates a .docx file with:
  - Document title and date
  - Formatted agenda table
  - Bullet points for discussions
  - Action items with assignees
  - Professional styling (headings, spacing)
- **Show**: Download the .docx file, open in Word to verify formatting

---

### Demo 2: Generate an Excel Dashboard (4 minutes)

**Scenario**: Create an Excel file with data, charts, and formatting

- **Ask**: "Using the sales data, create an Excel file with a summary table and bar chart showing revenue by region. Add conditional formatting to highlight top performers."
- **Expected**: Agent generates .xlsx file with:
  - Data table with sales by region
  - Bar chart visualization
  - Conditional formatting (colors for top/bottom)
  - Formatted headers and styling
- **Show**: Download the .xlsx file, open in Excel to verify charts and formatting

---

### Demo 3: Build a PowerPoint Presentation (5 minutes)

**Scenario**: Generate a slide deck with data visualizations

- **Ask**: "Create a PowerPoint presentation with 5 slides about Q4 sales performance. Include a title slide, overview slide with key metrics, 2 slides with charts (revenue by region and product), and a summary slide."
- **Expected**: Agent generates .pptx file with:
  - Title slide with presentation name
  - Overview slide with key numbers
  - Chart slides with visualizations
  - Summary slide with conclusions
  - Professional layout and design
- **Show**: Download the .pptx file, open in PowerPoint to verify slides

---

### Demo 4: Advanced Excel with Formulas (4 minutes)

**Scenario**: Create an Excel file with calculations and formulas

- **Ask**: "Create an Excel budget tracker with formulas. Include columns for planned budget, actual spend, variance, and percentage. Add a summary row with totals and conditional formatting for over-budget items."
- **Expected**: Agent generates .xlsx file with:
  - Formula columns (=Actual-Planned, =Variance/Planned)
  - SUM formulas for totals
  - Conditional formatting (red for over budget)
  - Formatted as professional table
- **Show**: Download and verify formulas work in Excel

---

### Demo 5: Combined Office Documents (5 minutes)

**Scenario**: Generate multiple Office files in one request

- **Ask**: "Create three documents: 1) A Word executive summary of our sales, 2) An Excel file with detailed sales data and charts, 3) A PowerPoint with 3 key takeaway slides. Use the sales data provided."
- **Expected**: Agent generates all three files:
  - Word report with executive summary text
  - Excel with detailed data and visualizations
  - PowerPoint with key insights
- **Show**: Download all three files to demonstrate multi-format capability

---

## Expected Outputs

### Word Documents (.docx)
- Professional formatting (headings, styles)
- Tables and lists
- Page layout and spacing
- Headers/footers (if requested)

### Excel Spreadsheets (.xlsx)
- Data in tables with headers
- Formulas and calculations
- Charts (bar, line, pie)
- Conditional formatting
- Styled worksheets

### PowerPoint Presentations (.pptx)
- Multiple slides with layouts
- Title and content slides
- Charts and visualizations
- Professional design
- Text content formatted

---

## UI Elements Demonstrated

- ✅ **Knowledge**: Embedded files (optional data sources)
- ✅ **Capabilities**: Code Interpreter (REQUIRED for Office file generation)
- ✅ **Code execution**: Python libraries for Office files
- ✅ **File downloads**: .docx, .xlsx, .pptx outputs

---

## Key Learning Points

1. **Code Interpreter can create Office files** - Not just charts, but full documents
2. **Professional formatting** - Applies styles, layouts, and corporate look
3. **Multiple file types** - Word, Excel, PowerPoint in one agent
4. **Data-driven documents** - Use uploaded data to populate files
5. **Downloadable outputs** - Users get ready-to-use Office files
6. **Python libraries**: Uses `python-docx`, `openpyxl`, `python-pptx`

---

## Use Cases

### Business Users
- Generate weekly/monthly reports automatically
- Create presentation decks from data
- Build Excel dashboards without manual work

### Analysts
- Convert data analysis into formatted reports
- Create Excel files with charts and formulas
- Generate PowerPoint summaries of findings

### Managers
- Create meeting minutes documents
- Generate budget tracking spreadsheets
- Build status update presentations

### Executives
- Get executive summary documents
- Review data in formatted Excel dashboards
- Receive presentation-ready slide decks

---

## Tips for Best Results

1. **Be specific about formatting**: "Use headings level 1 and 2" or "Apply blue color scheme"
2. **Request structure**: "5 slides with title, content, and charts"
3. **Mention data sources**: "Use the uploaded sales data"
4. **Specify file type**: Clearly state "Word", "Excel", or "PowerPoint"
5. **Ask for professional styling**: Agent will apply appropriate formatting
6. **Request specific chart types**: "Bar chart showing..." or "Pie chart of..."
7. **Iterate**: Download, review, then ask for adjustments

---

## Troubleshooting

**Issue**: Agent creates charts but not Office files
- **Solution**: Ensure Code Interpreter capability is enabled (toggle ON)

**Issue**: Formatting doesn't look professional
- **Solution**: Ask explicitly: "Use professional corporate formatting with headings and styles"

**Issue**: Charts missing in PowerPoint/Excel
- **Solution**: Specify chart type and data: "Add a bar chart showing revenue by region"

**Issue**: File won't open in Office
- **Solution**: Download file again, ensure correct file extension (.docx, .xlsx, .pptx)

**Issue**: Formulas not working in Excel
- **Solution**: Ask for "working formulas" or specify exact formula: "Add a SUM formula for totals"

---

## Microsoft Learn Resources

- **Code Interpreter**: https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/code-interpreter
- **Agent Builder**: https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite
- **Python-docx Documentation**: https://python-docx.readthedocs.io/
- **Python-pptx Documentation**: https://python-pptx.readthedocs.io/

---

**License Required**: No (Code Interpreter capability is free)  
**Admin Setup**: None required  
**Time to Demo**: 20-25 minutes  
**Difficulty**: Intermediate
