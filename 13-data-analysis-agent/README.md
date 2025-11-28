# Data Analysis Agent

**Demo Focus**: Multi-capability demo combining Code Interpreter + SharePoint + Embedded Files for comprehensive data analysis

---

## Agent Builder Configuration

### 1. Name
```
Business Intelligence Analyst
```
*Character limit: 30. Actual length: 29*

### 2. Description
```
Analyzes business data, creates visualizations, and generates insights from datasets stored in files and SharePoint. Combines Python code execution with access to company data sources to perform statistical analysis, create charts and graphs, identify trends, and generate data-driven recommendations. Upload Excel or CSV files, reference SharePoint data libraries, and ask questions like "Analyze Q4 sales and create a trend chart" or "Calculate ROI by region and show me the Python code." Ideal for business analysts, data analysts, managers, and executives needing quick data insights without manual spreadsheet work.
```
*Character limit: 1,000. Actual length: 583*

### 3. Instructions
```
You are an agent that combines data analysis capabilities with access to company data sources. You analyze data, create visualizations, and generate insights using Python code execution while referencing relevant business context from SharePoint.

Your behavior:
- Analyze uploaded data files and SharePoint datasets
- Create professional charts, graphs, and visualizations
- Perform statistical analysis (mean, median, trends, correlations, forecasting)
- Generate Python code for data processing and analysis
- Reference business context from SharePoint documents and reports
- Provide insights and recommendations based on data analysis
- Explain analysis methodology and assumptions
- Include data labels, legends, and clear titles on visualizations
- Cite data sources (files, SharePoint locations)
- Offer actionable recommendations based on findings
- Show Python code used for analysis when requested

Your tone: Analytical, data-driven, insightful, and business-focused.
```
*Character limit: 8,000. Actual length: 867*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Data Sources:
- **Embedded files**: Upload data files for analysis
  - Excel files (.xlsx) - up to 30MB per file
  - CSV files (.csv)
  - JSON data files (.json)
  - Text data files (.txt)
- **SharePoint folders**: Reference existing data repositories
  - `/sites/Finance/Shared Documents/Reports`
  - `/sites/Sales/Shared Documents/Data`
  - `/sites/Analytics/Shared Documents/Datasets`

**Note**: Up to 20 files total, max 512MB each (30MB for Excel)

#### Optional Sources:
- **SharePoint sites**: Additional business documentation
- **Public websites**: Industry benchmark data or reference materials

#### Toggles:
- ☐ **Search all websites**: Disabled (focus on company data)
- ☐ **Only use specified sources**: Optional (depends on use case)

### 5. Capabilities

- ☑ **Create documents, charts, and code** (Code Interpreter) - **REQUIRED** (toggle ON)
- ☐ **Create images** (Image Generator) - Not needed

**Code Interpreter Capabilities**:
- Runs Python code in sandboxed environment
- Analyzes Excel, CSV, JSON, and other data formats
- Creates charts, graphs, and visualizations
- Performs statistical computations
- Generates synthetic data for testing
- Processes and transforms data
- Outputs downloadable files and code snippets

### 6. Starter Prompts

1. "Analyze Q4 sales data and create visualizations by region"
2. "Calculate revenue trends over the last 12 months and forecast next quarter"
3. "Compare product performance across categories and show correlations"
4. "Identify top 10 customers by revenue and create a bar chart"
5. "Analyze customer survey results and summarize key insights"
6. "Find outliers in the expense data and explain potential causes"
7. "Create a dashboard showing KPIs with charts and statistics"
8. "Analyze employee engagement survey and highlight improvement areas"
9. "Calculate year-over-year growth rates by product line"
10. "Show me the Python code you used for this analysis"

---

## Mock Data Files

This demo includes comprehensive datasets for realistic analysis:

### Files Included:
1. `sales-data-2024-q4.xlsx` - Quarterly sales by region, product, customer
2. `customer-feedback-survey.csv` - Survey responses with ratings and comments
3. `financial-transactions-2024.csv` - Transaction details with dates and amounts
4. `product-performance-metrics.xlsx` - Product KPIs and performance data
5. `employee-engagement-survey.csv` - Employee survey results
6. `marketing-campaign-results.xlsx` - Campaign performance and ROI data
7. `revenue-forecast-model.csv` - Historical revenue for forecasting

---

## Demo Script

### Setup (3 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Upload the mock data files from this folder
   - (Optional) Add SharePoint folders with additional data
5. In **Capabilities** section:
   - Toggle **"Create documents, charts, and code"** (Code Interpreter) to **ON** ⚠️ REQUIRED
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (15 minutes)

**Step 1: Basic Data Analysis**
- **Ask**: "Analyze the Q4 sales data. What are the total sales, average order value, and top 3 regions?"
- **Expected**: Agent reads Excel file, calculates statistics, provides summary with numbers, and cites data source

**Step 2: Create Visualizations**
- **Ask**: "Create a bar chart showing sales by region"
- **Expected**: Agent generates professional bar chart with data labels, legend, title, and color-coded bars; chart is downloadable

**Step 3: Trend Analysis**
- **Ask**: "Calculate monthly revenue trends and create a line graph showing the trend"
- **Expected**: Agent analyzes time-series data, calculates monthly aggregates, creates line graph with trend line, identifies growth/decline patterns

**Step 4: Statistical Analysis**
- **Ask**: "What's the correlation between marketing spend and revenue? Show me a scatter plot."
- **Expected**: Agent calculates correlation coefficient, creates scatter plot with regression line, explains relationship strength and significance

**Step 5: Comparative Analysis**
- **Ask**: "Compare product performance across categories. Which category has the highest average revenue?"
- **Expected**: Agent groups data by category, calculates averages, creates comparison chart (grouped bar or box plot), highlights winner

**Step 6: Customer Insights**
- **Ask**: "Analyze customer survey results. What's the average satisfaction score? Show distribution."
- **Expected**: Agent calculates mean/median satisfaction, creates histogram or distribution chart, identifies key themes from comments

**Step 7: Outlier Detection**
- **Ask**: "Find outliers in the expense data and explain what makes them unusual"
- **Expected**: Agent applies statistical methods (IQR, z-score), identifies outliers, creates box plot, explains anomalies with context

**Step 8: Forecasting**
- **Ask**: "Based on historical revenue, forecast the next quarter's revenue"
- **Expected**: Agent applies forecasting method (linear regression, moving average), creates forecast visualization, provides confidence intervals

**Step 9: Dashboard Creation**
- **Ask**: "Create a dashboard with 3 key metrics: total revenue, average order value, and customer count. Include charts."
- **Expected**: Agent generates multiple visualizations (KPI cards, charts), organizes into dashboard-style layout, includes summary statistics

**Step 10: Code Transparency**
- **Ask**: "Show me the Python code you used to create that revenue forecast"
- **Expected**: Agent displays complete, well-commented Python code including imports, data processing steps, forecasting logic, and visualization code; code is copyable

**Step 11: Multi-Source Analysis (with SharePoint)**
- **Ask**: "Compare the uploaded sales data with last year's data from the SharePoint Finance folder. What's the YoY growth?"
- **Expected**: Agent accesses both data sources, calculates year-over-year growth by metric, creates comparison charts, explains significant changes

**Step 12: Advanced Analytics**
- **Ask**: "Perform a cohort analysis on customer purchases. Show retention rates by month."
- **Expected**: Agent groups customers by acquisition month, calculates retention metrics, creates cohort retention matrix or heatmap

---

## Expected Outputs

### Data Analysis Response Example:
```
**Q4 2024 Sales Analysis**

**Summary Statistics**:
- **Total Sales**: $2,847,500
- **Average Order Value**: $3,450
- **Total Orders**: 825
- **Unique Customers**: 342

**Top 3 Regions by Revenue**:
1. **West Coast**: $1,125,000 (39.5%)
2. **East Coast**: $890,000 (31.2%)
3. **Central**: $832,500 (29.2%)

**Key Insights**:
- West Coast continues to lead in revenue, driven by enterprise accounts
- East Coast shows strong growth (+15% vs Q3)
- Central region has highest order volume but lower AOV

*Data Source: sales-data-2024-q4.xlsx*
```

### Visualization Example Description:
```
[Agent generates a professional bar chart showing:]
- X-axis: Regions (West Coast, East Coast, Central)
- Y-axis: Revenue ($)
- Color-coded bars with data labels showing exact values
- Title: "Q4 2024 Sales by Region"
- Legend indicating data series
- Professional formatting with grid lines
```

### Python Code Example:
```python
# Q4 Sales Analysis and Visualization
import pandas as pd
import matplotlib.pyplot as plt

# Load the data
df = pd.read_excel('sales-data-2024-q4.xlsx')

# Calculate summary statistics
total_sales = df['revenue'].sum()
avg_order_value = df['revenue'].mean()
total_orders = len(df)

# Group by region and sum revenue
regional_sales = df.groupby('region')['revenue'].sum().sort_values(ascending=False)

# Create bar chart
plt.figure(figsize=(10, 6))
regional_sales.plot(kind='bar', color=['#1f77b4', '#ff7f0e', '#2ca02c'])
plt.title('Q4 2024 Sales by Region', fontsize=16, fontweight='bold')
plt.xlabel('Region', fontsize=12)
plt.ylabel('Revenue ($)', fontsize=12)
plt.xticks(rotation=45, ha='right')
plt.grid(axis='y', alpha=0.3)
plt.tight_layout()
plt.savefig('sales_by_region.png', dpi=300, bbox_inches='tight')
plt.show()

print(f"Total Sales: ${total_sales:,.2f}")
print(f"Average Order Value: ${avg_order_value:,.2f}")
print(f"Total Orders: {total_orders}")
```

### Forecast Response Example:
```
**Revenue Forecast for Q1 2025**

**Forecast Method**: Linear Regression on 12-month historical data

**Predicted Q1 2025 Revenue**: $3,125,000
**Confidence Interval (95%)**: $2,950,000 - $3,300,000

**Assumptions**:
- Continues historical growth trend of 9.5% per quarter
- No major market disruptions or seasonal anomalies
- Consistent product mix and pricing

**Key Factors**:
- Strong upward trend observed in past 4 quarters
- Seasonal patterns indicate Q1 typically 8-12% higher than Q4
- Recent product launches expected to drive growth

[Agent generates forecast chart with historical data, forecast line, and confidence bands]

*Recommendation*: Conservative planning should use lower bound ($2.95M), while growth targets can aim for midpoint ($3.13M)*
```

---

## Multi-Capability Workflow Example

**Business Scenario**: Quarterly Business Review Preparation

1. **Data Collection**
   - Upload Q4 sales Excel file
   - Reference SharePoint: Previous quarter data, budget targets, market research

2. **Analysis Phase**
   ```
   User: "Compare Q4 actual sales vs budget targets from SharePoint. Calculate variance."
   Agent: [Accesses both sources, calculates variances, creates comparison table]
   ```

3. **Visualization Phase**
   ```
   User: "Create a dashboard with: revenue trend, top products chart, and regional performance"
   Agent: [Generates 3 visualizations, organized cohesively]
   ```

4. **Insights Phase**
   ```
   User: "What are the key trends and recommendations based on this data?"
   Agent: [Provides data-driven insights citing specific metrics and visualizations]
   ```

5. **Code Export Phase**
   ```
   User: "Show me the Python code for the revenue trend analysis"
   Agent: [Displays complete, reproducible code that can be run independently]
   ```

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ✅ | **Multi-source data** integration |
| SharePoint folders | ✅ | **Specific data repositories** |
| Teams chats | ❌ | Not needed for data analysis |
| My emails | ❌ | Not needed |
| Embedded files | ✅ | **PRIMARY DATA SOURCE** - upload datasets |
| Public websites | ❌ | Optional for external benchmarks |
| Web search | ❌ | Not needed |
| Only use specified sources | ❌ | Optional based on use case |
| People directory | ❌ | Not needed |
| Copilot connectors | ❌ | Not needed (using SharePoint directly) |
| **Code Interpreter** | ✅ | **PRIMARY CAPABILITY** - data analysis |
| Image Generator | ❌ | Not needed (Code Interpreter creates charts) |

---

## Use Cases

### Business Analytics
- Sales performance analysis
- Revenue forecasting
- Customer segmentation
- Market trend analysis

### Financial Analysis
- Budget vs actual variance analysis
- Expense pattern identification
- ROI calculations
- Financial modeling

### Operations
- Process efficiency metrics
- Resource utilization analysis
- Quality control statistics
- Supply chain analytics

### HR Analytics
- Employee engagement analysis
- Turnover prediction
- Compensation benchmarking
- Workforce planning

---

## Best Practices

### Data Preparation
- Ensure Excel/CSV files are clean and well-structured
- Use clear column headers
- Remove or document missing values
- Include data dictionaries for complex datasets

### Analysis Requests
- Be specific about desired analysis type
- Specify visualization preferences when relevant
- Request code display for transparency and reproducibility
- Ask follow-up questions to refine analysis

### SharePoint Integration
- Organize data in dedicated SharePoint folders
- Use consistent naming conventions
- Keep datasets up to date
- Document data sources and update frequency

---

## Microsoft Learn References

- **Build agents with Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-build

- **Add knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Code interpreter capability**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/code-interpreter

- **Code interpreter examples**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/code-interpreter#code-interpreter-capability-examples

---

## Notes

- Code Interpreter capability available to users with **Microsoft 365 Copilot license**
- Python code runs in **sandboxed environment** (no external network access)
- Maximum file size: **512MB** per file (30MB recommended for Excel files)
- Maximum **20 files** can be uploaded as embedded files
- Generated charts are **downloadable** and **reusable**
- Python code is **copyable** for reproducibility and validation
- Agent can **combine multiple data sources** (files + SharePoint)
- **Multi-step analysis** supported (iterate and refine analysis)
- Code execution may take **several seconds** depending on data volume
