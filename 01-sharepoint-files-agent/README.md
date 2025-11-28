# SharePoint Files Agent

**Demo Focus**: Demonstrates how to add SharePoint sites, folders, and files as knowledge sources

---

## Agent Builder Configuration

### 1. Name
```
Policy & Procedure Guide
```
*Character limit: 30. Actual length: 25*

### 2. Description
```
Helps employees find and understand company policies, procedures, and guidelines. Searches through policy documents, employee handbooks, compliance guides, and procedural documentation stored in SharePoint. Provides clear explanations of policies, step-by-step procedures, and answers questions about workplace rules, benefits, compliance requirements, and standard operating procedures. Ideal for HR teams, managers, and all employees needing quick access to organizational policies.
```
*Character limit: 1,000. Actual length: 454*

### 3. Instructions
```
You are an agent that helps employees find and understand company policies, procedures, and guidelines. You search through policy documents and provide clear, accurate answers about workplace rules and procedures.

Your behavior:
- Always cite the specific policy document and section number
- Provide clear, easy-to-understand explanations of complex policies
- Include relevant dates (effective dates, revision dates)
- Highlight any exceptions or special circumstances
- Point users to the right department for policy-specific questions
- Summarize long policies into key points
- Use simple language to explain technical or legal terms
- Always indicate if a policy has been recently updated

Your tone: Clear, helpful, authoritative, and professional.
```
*Character limit: 8,000. Actual length: 674*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required SharePoint Sources:
- **SharePoint site**: `https://contoso.sharepoint.com/sites/HRPolicies`
- **SharePoint site**: `https://contoso.sharepoint.com/sites/ComplianceHub`
- **SharePoint folder**: `/sites/HRPolicies/Shared Documents/Employee Handbook`
- **SharePoint folder**: `/sites/HRPolicies/Shared Documents/Benefits Policies`
- **SharePoint folder**: `/sites/ComplianceHub/Shared Documents/SOPs`

#### Optional Sources:
- **Embedded files**: Upload additional policy PDFs from your device (up to 20 files)
- ☐ **Search all websites**: Disabled (use only internal policies)
- ☑ **Only use specified sources**: Enabled (ensure answers come from official policies only)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☐ **Create images** (Image Generator) - Not needed

### 6. Starter Prompts

1. "What is the remote work policy?"
2. "How many vacation days do I get?"
3. "What's the process for requesting parental leave?"
4. "Explain the expense reimbursement procedure"
5. "What are the security and data protection policies?"
6. "How do I report a workplace safety concern?"
7. "What's covered under our health insurance plan?"
8. "What is the code of conduct regarding conflicts of interest?"
9. "How do I request professional development funding?"
10. "What are the guidelines for using company equipment?"

---

## Mock Data Files

This demo includes sample SharePoint content simulated as embedded files:

### Files Included:
1. `employee-handbook-2024.pdf` - Complete employee handbook (simulated as .txt)
2. `remote-work-policy.docx` - Detailed remote work guidelines (simulated as .txt)
3. `benefits-guide.pdf` - Health insurance, 401k, vacation policies (simulated as .txt)
4. `expense-reimbursement-sop.docx` - Step-by-step reimbursement process (simulated as .txt)
5. `code-of-conduct.pdf` - Ethics and conduct guidelines (simulated as .txt)

---

## Demo Script

### Setup (1 minute)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section, add SharePoint sites (or upload the mock files from this folder)
5. Toggle **"Only use specified sources"** to ON
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (5 minutes)

**Step 1: Basic Policy Question**
- **Ask**: "What is the remote work policy?"
- **Expected**: Agent summarizes remote work eligibility, days allowed, equipment provided, citing `remote-work-policy.docx`

**Step 2: Benefits Question**
- **Ask**: "How many vacation days do I get?"
- **Expected**: Agent explains vacation accrual based on tenure, citing `benefits-guide.pdf` Section 3.2

**Step 3: Procedure Request**
- **Ask**: "Explain the expense reimbursement procedure step by step"
- **Expected**: Agent provides numbered steps from `expense-reimbursement-sop.docx`, including forms needed, approval process, and timelines

**Step 4: Complex Policy**
- **Ask**: "What's the code of conduct regarding conflicts of interest?"
- **Expected**: Agent summarizes key points from `code-of-conduct.pdf`, including definition, disclosure requirements, and examples

**Step 5: Recent Updates**
- **Ask**: "What policies have been updated in 2024?"
- **Expected**: Agent lists documents with 2024 revision dates, highlighting key changes

### Key Demonstration Points:
✅ Agent only searches SharePoint/embedded files (not web)
✅ Citations include document names and section numbers
✅ Clear, employee-friendly language
✅ Accurate information from official sources

---

## Expected Behavior

### What Works:
- Questions about any policy in the embedded files
- Requests for specific procedures or guidelines
- Comparisons between different policy options
- Clarification of policy terminology

### What Doesn't Work:
- Real-time HR system queries (e.g., "How many vacation days do I have left?")
- Processing leave requests or approvals
- Questions about topics not in the knowledge sources
- Personalized benefits calculations

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ✅ | Primary knowledge source |
| SharePoint folders | ✅ | Specific document libraries |
| SharePoint files | ✅ | Individual policy documents |
| Embedded files | ✅ | Upload additional policies |
| Teams chats | ❌ | Not needed for this use case |
| My emails | ❌ | Not needed |
| Public websites | ❌ | Disabled |
| Web search | ❌ | Disabled |
| Only use specified sources | ✅ | **Enabled** to ensure policy accuracy |
| People directory | ❌ | Not needed |
| Code Interpreter | ❌ | Not needed |
| Image Generator | ❌ | Not needed |

---

## Microsoft Learn References

- **Add knowledge sources to your declarative agent in Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **SharePoint knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/knowledge-sources#sharepoint
