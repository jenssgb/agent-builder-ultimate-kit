# Agent Builder Ultimate Kit - TODO List

## 🚀 Immediate Next Steps

### 1. Outlook Demo Automation Script (Priority: HIGH)
**Goal:** Create `setup-outlook-demo.ps1` to populate mailbox with demo emails

**Requirements:**
- ✅ Detect current logged-in user dynamically (`Get-MgContext`)
- ✅ Send 5 mock emails to user's inbox (from mock-data)
- ✅ Option for shared mailbox support
- ✅ Realistic email subjects, bodies, fake senders (in content)
- ✅ Cleanup script: `cleanup-outlook-demo.ps1`

**Tasks:**
- [ ] Create `setup-outlook-demo.ps1`
- [ ] Test with dynamic user detection
- [ ] Verify emails land in inbox
- [ ] Test Agent Builder can find emails
- [ ] Create cleanup script
- [ ] Update README with Outlook setup instructions
- [ ] Commit to repo

**Expected Files:**
```
setup-outlook-demo.ps1
cleanup-outlook-demo.ps1
03-email-intelligence-agent/mock-data/
  ├── email-1-budget-review.txt
  ├── email-2-client-proposal.txt
  ├── email-3-project-update.txt
  ├── email-4-team-announcement.txt
  └── email-5-meeting-followup.txt
```

---

## 📋 Pending Mock Data Creation

### Missing Mock Data Files (from TODO list):

#### High Priority:
- [ ] **Demo 02** - Teams Meetings (4 more transcripts needed, have 1)
- [ ] **Demo 03** - Email Intelligence (5 email files) - **COVERED BY OUTLOOK SCRIPT ABOVE**
- [ ] **Demo 06** - Scoped Source (3-5 compliance docs)
- [ ] **Demo 07** - People Directory (employee CSV)

#### Medium Priority:
- [ ] **Demo 08** - Azure DevOps (connector simulation files)
- [ ] **Demo 09** - ServiceNow (connector simulation files)
- [ ] **Demo 10** - Enterprise Websites (connector simulation files)

#### Already Complete:
- ✅ Demo 01 - SharePoint (5 files)
- ✅ Demo 04 - Public Websites (uses live URLs)
- ✅ Demo 05 - Web Search (uses Bing)
- ✅ Demo 11 - Code Interpreter (5 CSV files)
- ✅ Demo 12 - Image Generator (generates on demand)
- ✅ Demo 13 - Data Analysis (7 datasets)
- ✅ Demo 14 - Marketing Content (7 brand files)
- ✅ Demo 15 - All Features (uses other demos)
- ✅ Demo 16 - Office Document Generator (3 files)

---

## 🔧 Additional Automation Ideas (Future)

### 2. Demo Environment Validator Script
**Goal:** `validate-demo-environment.ps1` - Health check before demos

**Features:**
- [ ] Check SharePoint site exists
- [ ] Verify all 47 files uploaded
- [ ] Check permissions configured
- [ ] Validate user has M365 Copilot License
- [ ] Test Agent Builder accessibility
- [ ] Check Outlook demo emails present (if setup)
- [ ] Output: ✅/❌ status for each component

**Priority:** Medium (Quality-of-life improvement)

---

### 3. Cleanup Script
**Goal:** `cleanup-demo-environment.ps1` - Remove all demo data

**Features:**
- [ ] Delete SharePoint demo site
- [ ] Delete Outlook demo emails
- [ ] Optional: Delete OneNote notebooks (if created)
- [ ] Optional: Delete Planner boards (if created)
- [ ] Clean slate for next demo

**Priority:** Low (Nice-to-have)

---

### 4. OneNote Demo Automation
**Goal:** `setup-onenote-demo.ps1` - Create demo notebook

**Features:**
- [ ] Create OneNote notebook "Agent Builder Demos"
- [ ] Add sections: Projects, Meetings, Notes
- [ ] Populate with sample pages
- [ ] Agent Builder can search OneNote (if supported)

**Priority:** Low (Exploratory)

---

## 📚 Documentation Updates

### README Enhancements Needed:
- [ ] Add Outlook setup script documentation
- [ ] Update "Quick Start" with Outlook option
- [ ] Add troubleshooting for Outlook emails
- [ ] Document shared mailbox setup (optional)
- [ ] Add validation script documentation (when built)

---

## ✅ Completed Work (for reference)

### Infrastructure:
- ✅ SharePoint automation script (`setup-sharepoint.ps1`)
- ✅ Organization-wide sharing (auto-detect EN/DE/FR)
- ✅ Comprehensive README (consolidated from GUIDE.md + SETUP-GUIDE.md)
- ✅ Demo 16 created (Office Document Generator)
- ✅ All READMEs for connectors (08, 09, 10)
- ✅ All READMEs for multi-capability demos (13, 14)

### Documentation:
- ✅ Single README with full setup guide
- ✅ SharePoint architecture documented
- ✅ Troubleshooting section
- ✅ All 16 demos cataloged
- ✅ Learning objectives for each demo

---

## 🎯 Known Limitations & Decisions

### Teams Chat Automation - NOT POSSIBLE
**Decision:** Use SharePoint mock-data (.txt files) instead
**Reason:** 
- No multi-user impersonation via Graph API
- Bot posts would show (APP) badge
- Admin-only posts would be misinterpreted by Agent
- Manual multi-user posts = only authentic option

**Documented in:** README (Teams demo section)

### Email Demo - SOLVED
**Solution:** Outlook automation script (to be built)
**Approach:** Send emails to self, appear in inbox, Agent Builder can search

---

## 📅 Timeline

**Next Session (Tomorrow):**
1. Build `setup-outlook-demo.ps1`
2. Test with dynamic user detection
3. Verify Agent Builder integration
4. Create cleanup script
5. Update README

**Future Sessions:**
1. Complete remaining mock data (Demos 02, 06, 07, 08-10)
2. Validation script (optional)
3. Cleanup script (optional)

---

**Last Updated:** November 29, 2025  
**Status:** SharePoint automation complete ✅ | Outlook automation next 🚀
