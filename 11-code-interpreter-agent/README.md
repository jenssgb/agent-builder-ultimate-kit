# Code Interpreter Agent

**Demo Focus**: Demonstrates "Code Interpreter" capability for data analysis, charts, and code generation

---

## Agent Builder Configuration

### 1. Name
```
Data Analysis Assistant
```
*Character limit: 30. Actual length: 25*

### 2. Description
```
Analyzes data, creates visualizations, and generates code to solve complex problems. Uses Python code interpreter to perform calculations, analyze datasets, create charts and graphs, generate synthetic data, and solve mathematical problems. Upload Excel, CSV, or data files and ask questions like "Create a bar chart of sales by region" or "Calculate the average and trends." Ideal for analysts, researchers, and anyone who needs data insights without manual spreadsheet work. Outputs include visualizations, statistics, and downloadable code.
```
*Character limit: 1,000. Actual length: 527*

### 3. Instructions
```
You are an agent that analyzes data, creates visualizations, and generates code using Python. You help users understand their data through charts, statistics, and analysis.

Your behavior:
- Analyze uploaded data files (Excel, CSV, JSON, etc.)
- Create charts and visualizations (bar, line, pie, scatter, etc.)
- Perform statistical calculations (mean, median, trends, correlations)
- Generate synthetic data for testing
- Solve complex math problems
- Write and execute Python code
- Provide code snippets users can reuse
- Explain analysis methodology and results
- Include data labels, legends, and clear titles on charts
- Offer insights and recommendations from data analysis

Your tone: Analytical, educational, precise, and data-driven.
```
*Character limit: 8,000. Actual length: 686*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Data Sources:
- **Embedded files**: Upload data files (Excel, CSV, JSON, TXT)
  - sales-data-2024.xlsx
  - customer-feedback.csv
  - financial-transactions.csv

**Note**: Up to 20 files, max 512MB each (30MB for Excel)

#### Optional Sources:
- **SharePoint folders**: Additional datasets or reports
- **Public websites**: Documentation or data dictionaries

### 5. Capabilities

- ☑ **Create documents, charts, and code** (Code Interpreter) - **REQUIRED** (toggle ON)
- ☐ **Create images** (Image Generator) - Not needed

**What Code Interpreter Does**:
- Runs Python code in sandboxed environment
- Analyzes data and creates visualizations
- Generates graphs, charts, and plots
- Solves math problems and equations
- Creates synthetic data
- Modifies uploaded images
- Outputs downloadable files and code

### 6. Starter Prompts

1. "Analyze the sales data and create a bar chart by region"
2. "Calculate average, median, and standard deviation of revenue"
3. "Create a line graph showing monthly trends"
4. "Find correlations between product categories"
5. "Generate 100 rows of synthetic customer data"
6. "Solve the quadratic equation and graph the function"
7. "Create a pie chart of expenses by category"
8. "Identify outliers in the dataset"
9. "Calculate year-over-year growth percentages"
10. "Show me the Python code used for this analysis"

---

## Mock Data Files

This demo includes sample datasets for analysis:

### Files Included:
1. `sales-data-2024.xlsx` - Regional sales figures by month
2. `customer-feedback.csv` - Survey responses with ratings
3. `financial-transactions.csv` - Sample transaction data
4. `product-performance.csv` - Product metrics and KPIs
5. `employee-survey-results.csv` - Engagement survey data

---

## Demo Script

### Setup (2 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Upload the mock data files from this folder (Excel, CSV)
5. In **Capabilities** section:
   - Toggle **"Create documents, charts, and code"** (Code Interpreter) to **ON** ⚠️ REQUIRED
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (10 minutes)

**Step 1: Basic Chart Creation**
- **Ask**: "Analyze the sales data and create a bar chart by region"
- **Expected**: Agent reads Excel file, creates bar chart showing sales by region, includes labels and values, provides summary statistics

**Step 2: Statistical Analysis**
- **Ask**: "Calculate average, median, and standard deviation of revenue"
- **Expected**: Agent performs calculations, displays results in formatted table, explains what numbers mean

**Step 3: Trend Analysis**
- **Ask**: "Create a line graph showing monthly trends"
- **Expected**: Agent generates line graph with months on X-axis, revenue on Y-axis, identifies trends (increasing/decreasing)

**Step 4: Correlation Analysis**
- **Ask**: "Find correlations between product categories"
- **Expected**: Agent calculates correlation coefficients, creates scatter plots or heat map, explains relationships

**Step 5: Synthetic Data Generation**
- **Ask**: "Generate 100 rows of synthetic customer data"
- **Expected**: Agent creates fake data (names, emails, ages, purchases), displays sample rows, offers download as CSV/Excel

**Step 6: Math Problem Solving**
- **Ask**: "Solve the quadratic equation x² - 5x + 6 = 0 and graph the function"
- **Expected**: Agent solves equation (x = 2, x = 3), creates parabola graph, shows solution steps

**Step 7: Code Output**
- **Ask**: "Show me the Python code used for this analysis"
- **Expected**: Agent displays complete Python code with comments, users can copy and reuse

### Key Demonstration Points:
✅ **Code Interpreter enabled** (toggle)  
✅ Data analysis from uploaded files  
✅ Chart and graph creation  
✅ Statistical calculations  
✅ Synthetic data generation  
✅ Math problem solving  
✅ Python code output (copyable)  
✅ Downloadable results  

---

## Expected Behavior

### What Works:
- Analyzing uploaded data files (Excel, CSV, JSON, TXT)
- Creating charts (bar, line, pie, scatter, histogram, etc.)
- Statistical analysis (mean, median, std dev, percentiles)
- Trend analysis and forecasting
- Correlation and regression analysis
- Solving math equations
- Generating synthetic data
- Creating QR codes and word clouds
- Modifying uploaded images
- Providing downloadable Python code

### What Doesn't Work:
- Real-time database queries
- Accessing external APIs
- Installing additional Python packages
- Running code indefinitely (timeout limits)
- Accessing the internet from code

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ❌ | Optional |
| Teams chats | ❌ | Not needed |
| My emails | ❌ | Not needed |
| Embedded files | ✅ | **Upload data files** (Excel, CSV, JSON) |
| Public websites | ❌ | Optional |
| Web search | ❌ | Not needed |
| Only use specified sources | ❌ | Optional |
| People directory | ❌ | Not needed |
| **Code Interpreter** | ✅ | **PRIMARY CAPABILITY** - toggle ON |
| Image Generator | ❌ | Not needed (different capability) |

---

## Important Notes

### Code Interpreter Capability:
- **Python environment**: Runs Python 3.x in sandboxed environment
- **Libraries available**: pandas, numpy, matplotlib, scipy, seaborn, PIL, etc.
- **Timeout**: Code execution has time limits (typically 5 minutes)
- **Memory**: Limited memory available for processing
- **No internet**: Code cannot access external websites or APIs
- **File limits**: 20 files max, 512MB each (30MB for Excel)

### Supported File Types:
✅ Excel (.xlsx, .xls)  
✅ CSV (.csv)  
✅ JSON (.json)  
✅ Text files (.txt)  
✅ PDF (text extraction only)  
✅ Images (.jpg, .png) for modification  

### Example Use Cases:
- Sales data analysis and reporting
- Customer survey analysis
- Financial data visualization
- Scientific data analysis
- Marketing campaign performance
- A/B test result analysis
- Budget tracking and forecasting
- KPI dashboards
- Academic research data

### License Requirements:
- **Code Interpreter**: Requires Microsoft 365 Copilot license or metered usage (no additional cost)

---

## Microsoft Learn References

- **Add the code interpreter capability to your agent**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/code-interpreter

- **Code interpreter examples**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/code-interpreter#code-interpreter-capability-examples

- **Agent capabilities**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/declarative-agent-manifest-1.6#capabilities-object
