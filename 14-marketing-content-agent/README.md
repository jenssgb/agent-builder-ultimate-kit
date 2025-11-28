# Marketing Content Agent

**Demo Focus**: Multi-capability demo combining Image Generator + Web Search + SharePoint for comprehensive marketing content creation

---

## Agent Builder Configuration

### 1. Name
```
Marketing Content Creator
```
*Character limit: 30. Actual length: 26*

### 2. Description
```
Creates marketing content including visual assets, social media posts, and campaign materials by combining AI image generation with company brand guidelines and current market trends. Accesses brand assets from SharePoint, researches latest trends via web search, and generates custom images for marketing campaigns. Upload brand guidelines, reference SharePoint marketing folders, and ask "Create a social media post about our new product launch" or "Generate hero images for the Q1 campaign following our brand style." Ideal for marketing teams, content creators, social media managers, and brand designers needing quick visual content creation.
```
*Character limit: 1,000. Actual length: 611*

### 3. Instructions
```
You are an agent that creates marketing content and visual assets by combining AI image generation with brand knowledge and market intelligence. You generate images, social posts, and campaign materials that align with brand guidelines and current trends.

Your behavior:
- Generate 4 image variations for each creative prompt
- Reference brand guidelines from SharePoint when creating visuals
- Research current marketing trends via web search
- Follow brand colors, fonts, and style preferences from guidelines
- Create images suitable for specified channels (social media, web, print)
- Provide copy suggestions for social posts and campaigns
- Suggest iterations and refinements to creative concepts
- Respect brand voice and messaging guidelines
- Include content type tags (LinkedIn, Instagram, Facebook, etc.)
- Cite sources for trend research and inspiration
- Offer multiple creative directions when requested

Your tone: Creative, brand-focused, trend-aware, and collaborative.
```
*Character limit: 8,000. Actual length: 868*

### 4. Knowledge Sources

**Add these in the "Knowledge" section:**

#### Required Brand Sources:
- **SharePoint folders**: Brand asset repositories
  - `/sites/Marketing/Shared Documents/Brand Guidelines`
  - `/sites/Marketing/Shared Documents/Campaign Assets`
  - `/sites/Marketing/Shared Documents/Product Images`
- **Embedded files**: Upload brand materials
  - Brand style guide (PDF)
  - Logo files and color palettes
  - Sample campaign materials

#### Required Web Sources:
- ☑ **Search all websites**: Toggle **ON** for trend research

**Note**: Up to 20 embedded files, max 512MB each

#### Optional Sources:
- **Public websites**: Competitor sites or industry blogs (up to 4 URLs)
- **SharePoint sites**: Additional marketing documentation

#### Toggles:
- ☑ **Search all websites**: **ENABLED** for trend research
- ☐ **Only use specified sources**: Disabled (allow web research)

### 5. Capabilities

- ☐ **Create documents, charts, and code** (Code Interpreter) - Not needed
- ☑ **Create images** (Image Generator) - **REQUIRED** (toggle ON)

**Image Generator Capabilities**:
- Creates 4 image variations per prompt
- Supports various styles (photo, illustration, 3D, abstract)
- Allows iterative refinements
- Provides download and share options
- Includes content credentials
- Feedback mechanism for improvements

### 6. Starter Prompts

1. "Create a social media post image for our new product launch following brand guidelines"
2. "Generate hero images for the Q1 campaign website using our brand colors"
3. "Design LinkedIn post graphics about our sustainability initiative"
4. "Create Instagram story templates with our brand style"
5. "Generate presentation slide backgrounds for the sales kickoff"
6. "Research current B2B marketing trends and create a trend report graphic"
7. "Design email header images for the holiday campaign"
8. "Create Facebook ad visuals showcasing our customer success stories"
9. "Generate infographic-style images explaining our product benefits"
10. "Design event banner graphics for the annual conference"

---

## Mock Data Files

This demo includes brand assets and marketing materials:

### Files Included:
1. `brand-style-guide-2024.pdf` - Complete brand guidelines
2. `brand-colors-palette.txt` - Official color codes
3. `logo-files-package.txt` - Logo usage guidelines
4. `sample-campaign-q4-2024.txt` - Previous campaign examples
5. `product-messaging-guide.txt` - Product positioning
6. `social-media-guidelines.txt` - Channel-specific guidelines
7. `competitor-analysis.txt` - Market intelligence

---

## Demo Script

### Setup (3 minutes)
1. Open Microsoft 365 Copilot at microsoft365.com/chat
2. Click **"Create agent"** → Select **"Configure"** tab
3. Enter the Name, Description, and Instructions from above
4. In **Knowledge** section:
   - Upload brand guideline files from this folder
   - Add SharePoint folders with marketing assets
   - Toggle **"Search all websites"** to **ON**
5. In **Capabilities** section:
   - Toggle **"Create images"** (Image Generator) to **ON** ⚠️ REQUIRED
6. Add the 10 Starter Prompts
7. Click **"Create"** to save the agent

### Demo Flow (15 minutes)

**Step 1: Brand-Aligned Image Generation**
- **Ask**: "Create a social media post image for our new product launch. Use our brand colors and modern style."
- **Expected**: Agent references brand guidelines from SharePoint/files, generates 4 image variations using brand colors (e.g., blue #0078D4, white), modern aesthetic, product-focused composition

**Step 2: Image Iteration**
- **Ask**: "Make the second image more vibrant and add our tagline 'Innovation for Everyone'"
- **Expected**: Agent regenerates image with increased color saturation, includes text overlay with tagline, maintains brand style from previous prompt

**Step 3: Channel-Specific Content**
- **Ask**: "Create Instagram story graphics (9:16 aspect ratio) promoting our sustainability initiative"
- **Expected**: Agent generates vertical format images, vibrant colors suitable for Instagram, includes sustainability themes (nature, green technology), mobile-optimized composition

**Step 4: Trend Research + Image Creation**
- **Ask**: "Research current B2B marketing design trends and create a LinkedIn post graphic using those trends"
- **Expected**: Agent searches web for current trends (minimalism, bold typography, data visualization), generates image incorporating trends while respecting brand guidelines, cites trend sources

**Step 5: Campaign Hero Image**
- **Ask**: "Generate hero images for our Q1 campaign website. Theme is 'Digital Transformation'. Show diverse business professionals collaborating."
- **Expected**: Agent creates professional photography-style images, diverse representation, modern office/collaborative settings, technology elements, suitable for web hero section

**Step 6: Multiple Variations**
- **Ask**: "Create 4 different visual concepts for our email campaign header. Theme: Customer Success Stories."
- **Expected**: Agent generates 4 distinct creative directions (testimonial-focused, data-driven, lifestyle, abstract concept), all aligned with brand, suitable for email width

**Step 7: Event Graphics**
- **Ask**: "Design event banner graphics for our annual conference 'FutureTech 2025'. Include futuristic technology elements."
- **Expected**: Agent creates banner-format images (wide aspect ratio), futuristic design elements (circuit boards, AI, holographic), incorporates conference branding, suitable for digital and print

**Step 8: Competitor Research + Differentiation**
- **Ask**: "Research what visual styles our competitors are using, then create Facebook ad visuals that stand out while following our brand"
- **Expected**: Agent searches web for competitor marketing, analyzes visual trends, generates images that differentiate (unique angles, bold use of brand colors, memorable composition)

**Step 9: Infographic Creation**
- **Ask**: "Create infographic-style images explaining our product's three key benefits: Speed, Security, Simplicity"
- **Expected**: Agent generates visual representations of benefits (icons, data visualization, process flows), clean layout, text-friendly design, brand-consistent styling

**Step 10: Presentation Graphics**
- **Ask**: "Generate professional slide backgrounds for our sales kickoff presentation. Clean, corporate, with subtle brand elements."
- **Expected**: Agent creates minimalist backgrounds, subtle brand color accents, professional aesthetic, doesn't overpower slide content, suitable for PowerPoint/Google Slides

**Step 11: Seasonal Campaign**
- **Ask**: "Create holiday campaign visuals for December. Festive but professional, aligned with our B2B brand."
- **Expected**: Agent balances festive elements (subtle winter themes, warm colors) with professional B2B tone, avoids overly consumer-focused holiday clichés, maintains brand credibility

**Step 12: Content Series**
- **Ask**: "Design a series of 5 Instagram carousel images teaching 'Cloud Computing Basics'. Use consistent style and our brand colors."
- **Expected**: Agent creates cohesive visual series, numbered or sequential design, educational content layout, consistent typography and color scheme, suitable for Instagram multi-image posts

---

## Expected Outputs

### Social Media Post Image Example:
```
**Prompt Used**: "Create LinkedIn post graphic about product launch using brand blue"

**Generated Images** (4 variations):
1. **Variation 1**: Modern geometric design with product mockup, bold blue (#0078D4) background, white text overlay "Introducing [Product Name]", professional clean aesthetic
2. **Variation 2**: Lifestyle-oriented image with business professional using product, blue color grading, natural setting, authentic feel
3. **Variation 3**: Abstract concept with flowing blue shapes representing innovation, minimalist typography, artistic interpretation
4. **Variation 4**: Data visualization style with charts and graphs, blue accent colors, professional infographic aesthetic

**User Actions Available**:
- View full-size image
- Download image (PNG)
- Copy to clipboard
- Share directly
- Provide feedback (👍/👎)
- Request modifications
```

### Brand-Aligned Response Example:
```
Based on your brand guidelines from SharePoint:

**Brand Colors Applied**:
- Primary: Azure Blue (#0078D4)
- Secondary: White (#FFFFFF)
- Accent: Light Gray (#F3F2F1)

**Style Guidelines Followed**:
- Modern, clean aesthetic
- Sans-serif typography
- Minimalist composition
- Professional tone

**Image Purpose**: Social media post (LinkedIn)
**Dimensions**: Optimized for 1200x628px (LinkedIn recommended)
**Content**: Product launch announcement

I've generated 4 variations following these guidelines. Would you like me to adjust any specific elements?
```

### Trend Research + Creative Example:
```
**Current B2B Marketing Design Trends** (from web research):

1. **Bold Typography** - Large, attention-grabbing headlines (Source: Marketing Dive, Nov 2024)
2. **Minimalist Layouts** - Clean, focused compositions (Source: HubSpot Blog)
3. **Data Visualization** - Charts and infographics in visual content (Source: Content Marketing Institute)
4. **Authentic Photography** - Real people over stock photos (Source: Social Media Examiner)

**Generated Image**:
Created LinkedIn graphic incorporating:
- Bold, oversized headline in brand font
- Minimalist white space
- Single data point highlighted (our key metric)
- Authentic photo aesthetic (looks genuine, not stock)
- Brand blue as accent color

This approach differentiates from competitors while following current best practices.
```

---

## Multi-Capability Workflow Example

**Business Scenario**: Q1 Product Launch Campaign

1. **Research Phase**
   ```
   User: "Research current tech product launch trends and successful examples"
   Agent: [Searches web, summarizes trends, provides examples with citations]
   ```

2. **Brand Alignment Phase**
   ```
   User: "Review our brand guidelines from SharePoint and confirm our primary colors and style"
   Agent: [Accesses SharePoint brand folder, confirms brand elements]
   ```

3. **Hero Image Creation**
   ```
   User: "Create website hero images for the launch. Modern tech aesthetic with brand colors."
   Agent: [Generates 4 hero image variations combining trend research + brand guidelines]
   ```

4. **Social Content**
   ```
   User: "Create a series of social media images: 1 for LinkedIn, 1 for Twitter, 1 for Instagram"
   Agent: [Generates channel-specific images with appropriate formats and styles]
   ```

5. **Iteration Phase**
   ```
   User: "The Instagram version needs to be more vibrant. Add product UI screenshot."
   Agent: [Refines image based on feedback, incorporates specific elements]
   ```

6. **Campaign Package**
   ```
   User: "Now create email header, presentation background, and event banner using the same visual theme"
   Agent: [Generates cohesive campaign asset package across multiple formats]
   ```

---

## UI Elements Demonstrated

| Agent Builder Feature | Used | Notes |
|----------------------|------|-------|
| SharePoint sites | ✅ | **Brand asset repositories** |
| SharePoint folders | ✅ | **Marketing content folders** |
| Teams chats | ❌ | Not needed |
| My emails | ❌ | Not needed |
| Embedded files | ✅ | **Upload brand guidelines** |
| Public websites | ❌ | Optional for competitor research |
| **Web search** | ✅ | **ENABLED** - research trends |
| Only use specified sources | ❌ | Disabled (allow trend research) |
| People directory | ❌ | Not needed |
| Copilot connectors | ❌ | Not needed |
| Code Interpreter | ❌ | Not needed (Image Generator for visuals) |
| **Image Generator** | ✅ | **PRIMARY CAPABILITY** - create visuals |

---

## Use Cases

### Social Media Marketing
- Social post graphics
- Story templates
- Ad creative
- Profile banners

### Campaign Assets
- Hero images
- Email headers
- Landing page visuals
- Banner ads

### Presentations
- Slide backgrounds
- Section dividers
- Infographic slides
- Title cards

### Events
- Event banners
- Digital signage
- Booth graphics
- Conference materials

### Product Marketing
- Product launch visuals
- Feature highlights
- Comparison graphics
- Demo screenshots mockups

---

## Best Practices

### Brand Guidelines Management
- Keep brand guidelines updated in SharePoint
- Include color codes, fonts, logo files, and usage rules
- Document do's and don'ts for visual content
- Provide examples of on-brand vs off-brand content

### Effective Image Prompts
- Be specific about style (modern, minimalist, bold, etc.)
- Specify purpose (social media, email, presentation)
- Mention brand elements explicitly (colors, mood, themes)
- Describe composition (centered, left-aligned, with text space)
- Request multiple variations to explore creative directions

### Iterative Creation
- Start with broad concept, then refine
- Request specific modifications using clear language
- Build on successful variations
- Save and reference good examples for consistency

### Web Search Integration
- Research trends before creating campaign assets
- Check competitor visual strategies
- Stay current with platform-specific best practices
- Cite trends when presenting creative concepts to stakeholders

---

## Microsoft Learn References

- **Build agents with Microsoft 365 Copilot**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-build

- **Add knowledge sources**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge

- **Image generator capability**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/image-generator

- **Image generator examples**  
  https://learn.microsoft.com/en-us/microsoft-365-copilot/extensibility/image-generator#image-generator-examples

---

## Notes

- Image Generator capability available to **Copilot Chat users** (no metered usage or M365 Copilot license required)
- Agent generates **4 image variations** per prompt
- Images support **various styles**: photo-realistic, illustration, 3D, abstract, minimalist
- **Iterative refinement** supported through follow-up prompts
- Images are **downloadable** in high resolution
- Content credentials included for AI-generated images
- Agent can **combine brand guidelines** (SharePoint) + **trend research** (web) + **image generation**
- Suitable for rapid prototyping and creative exploration
- For final production assets, review and refine generated images
- Note: Image generator may not work in test pane during configuration (works after agent creation)
