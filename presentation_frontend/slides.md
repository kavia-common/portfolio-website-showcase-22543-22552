---
# Global deck settings
title: "Portfolio Website Showcase"
info: |
  Ocean Professional — Blue & Amber accents, minimalist, subtle gradients, rounded corners, and shadow details.
  Full-screen slides, navigation sidebar, and branded header/footer for a polished presentation.
class: text-left
mdc: true
transition: slide-left
fonts:
  sans: Inter, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica Neue, Arial
  mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace
css: |
  @import "./style.css";
layout:
  width: 1280
  height: 720
---

<!-- Header / Footer / Sidebar layout wrapper -->
<OceanFrame>

# Portfolio Website Showcase
<div class="title-slide with-hero-glow">
  <div class="hero-copy">
    <h2 class="text-hero">Designing Trust with Clarity</h2>
    <p class="subtitle text-md">A modern, performant portfolio that converts visitors into clients</p>
    <div class="subtitle text-xs">by Your Name • your@email.com • yoursite.com</div>
    <div class="hero-ctas mt-2">
      <button class="btn-primary">View Live</button>
      <button class="btn-secondary">Case Study</button>
    </div>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Vision & Design Philosophy

<div class="card-grid three mt-2">
  <div class="feature-card">
    <div class="eyebrow">Clarity</div>
    <h3 class="feature-title">Minimal, Purposeful</h3>
    <ul class="points-clean">
      <li>Focus on essential content</li>
      <li>Whitespace for readability</li>
      <li>Typographic hierarchy</li>
    </ul>
  </div>

  <div class="feature-card">
    <div class="eyebrow">Craft</div>
    <h3 class="feature-title">Ocean Professional Theme</h3>
    <ul class="points-clean">
      <li>Primary blue (#2563EB) accents</li>
      <li>Amber (#F59E0B) highlights</li>
      <li>Subtle gradients and shadows</li>
    </ul>
  </div>

  <div class="feature-card">
    <div class="eyebrow">Trust</div>
    <h3 class="feature-title">Credibility Signals</h3>
    <ul class="points-clean">
      <li>Case studies & testimonials</li>
      <li>Clear CTAs across pages</li>
      <li>Accessible, responsive UI</li>
    </ul>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Feature Highlights

<div class="split-cols mt-2">
  <div class="left">
    <div class="feature-card">
      <h3 class="feature-title">Hero With Value Proposition</h3>
      <p class="muted">Clear headline, subcopy, primary CTA, and supporting proof.</p>
    </div>
    <div class="feature-card">
      <h3 class="feature-title">Project Gallery</h3>
      <p class="muted">Filterable categories, rich thumbnails, quick case-study access.</p>
    </div>
    <div class="feature-card">
      <h3 class="feature-title">Case Studies</h3>
      <p class="muted">Problem → Process → Outcome with metrics and visuals.</p>
    </div>
  </div>
  <div class="right">
    <div class="glass-frame tall">
      <div class="placeholder">Mock: Hero section with blue gradient and CTA</div>
    </div>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Experience & Flow

<div class="stats-band mt-2">
  <div class="stat-card">
    <div class="stat-number">1.2s</div>
    <div class="stat-label">Time to Interactive</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">98</div>
    <div class="stat-label">Lighthouse Perf</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">AA</div>
    <div class="stat-label">Accessibility</div>
  </div>
</div>

<div class="timeline mt-2">
  <div class="time-node">
    <div class="time-dot"></div>
    <div class="time-card">
      <div class="eyebrow">Step 1</div>
      <h4>Landing → Hero</h4>
      <ul class="points-clean">
        <li>Headline + CTA</li>
        <li>Immediate credibility</li>
      </ul>
    </div>
  </div>
  <div class="time-node">
    <div class="time-dot"></div>
    <div class="time-card">
      <div class="eyebrow">Step 2</div>
      <h4>Projects → Case Study</h4>
      <ul class="points-clean">
        <li>Filter by type</li>
        <li>Outcome-focused stories</li>
      </ul>
    </div>
  </div>
  <div class="time-node">
    <div class="time-dot future"></div>
    <div class="time-card">
      <div class="eyebrow">Step 3</div>
      <h4>Contact → Conversion</h4>
      <ul class="points-clean">
        <li>Short form</li>
        <li>Calendly integration</li>
      </ul>
    </div>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Information Architecture

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "primaryColor": "#2563EB",
    "primaryTextColor": "#111827",
    "lineColor": "#2563EB"
  }
}}%%
flowchart LR
    Landing[Landing / Home] --> About[About]
    Landing --> Work[Projects]
    Landing --> Services[Services]
    Work --> CaseStudy1[Case Study A]
    Work --> CaseStudy2[Case Study B]
    Services --> Pricing[Pricing]
    About --> Contact[Contact]
```

<div class="card mt-2">
  <div class="overline">Notes</div>
  <ul class="points-clean">
    <li>Primary navigation persistent in header</li>
    <li>Active section highlighted in sidebar</li>
    <li>Footer includes socials and contact CTA</li>
  </ul>
</div>

</OceanFrame>

---

<OceanFrame>

# Visual Language

<div class="card-grid three mt-2">
  <div class="feature-card">
    <div class="eyebrow">Color</div>
    <h3 class="feature-title">Blue & Amber Accents</h3>
    <ul class="points-clean">
      <li>Primary: #2563EB</li>
      <li>Secondary: #F59E0B</li>
      <li>Error: #EF4444</li>
    </ul>
  </div>

  <div class="feature-card">
    <div class="eyebrow">Surface</div>
    <h3 class="feature-title">Light Surfaces</h3>
    <ul class="points-clean">
      <li>Background: #f9fafb</li>
      <li>Surface: #ffffff</li>
      <li>Text: #111827</li>
    </ul>
  </div>

  <div class="feature-card">
    <div class="eyebrow">Details</div>
    <h3 class="feature-title">Modern Minimalist</h3>
    <ul class="points-clean">
      <li>Rounded corners</li>
      <li>Soft drop shadows</li>
      <li>Subtle gradients</li>
    </ul>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Components & Sections

<div class="card-grid three mt-2">
  <div class="feature-card">
    <h3 class="feature-title">Hero & CTAs</h3>
    <p class="muted">Prominent headline with primary actions to drive engagement.</p>
  </div>
  <div class="feature-card">
    <h3 class="feature-title">Work Grid</h3>
    <p class="muted">Responsive gallery with hover states and quick previews.</p>
  </div>
  <div class="feature-card">
    <h3 class="feature-title">Testimonial Band</h3>
    <p class="muted">Social proof with avatars, names, and outcomes.</p>
  </div>
  <div class="feature-card">
    <h3 class="feature-title">Process</h3>
    <p class="muted">Discovery → Design → Develop → Deliver, with clear steps.</p>
  </div>
  <div class="feature-card">
    <h3 class="feature-title">Contact</h3>
    <p class="muted">Short form, availability, and alternative channels.</p>
  </div>
  <div class="feature-card">
    <h3 class="feature-title">Footer</h3>
    <p class="muted">Branding, navigation, and legal links.</p>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Benefits

<div class="stats-grid mt-2">
  <div class="stat-card">
    <div class="stat-number">+42%</div>
    <div class="stat-label">Lead Conversion</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">-35%</div>
    <div class="stat-label">Bounce Rate</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">+3x</div>
    <div class="stat-label">Time on Site</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">A+</div>
    <div class="stat-label">SEO Health</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">100%</div>
    <div class="stat-label">Responsive</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">Fast</div>
    <div class="stat-label">Edge Cached</div>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Case Study Snapshot

<div class="split-cols mt-2">
  <div class="left">
    <div class="feature-card">
      <div class="eyebrow">Client</div>
      <h3 class="feature-title">Independent Designer</h3>
      <ul class="points-clean">
        <li>Needed higher-quality leads</li>
        <li>Wanted to showcase process and outcomes</li>
        <li>Required easy content updates</li>
      </ul>
    </div>
    <div class="feature-card">
      <div class="eyebrow">Approach</div>
      <ul class="points-clean">
        <li>Reworked information architecture</li>
        <li>Focused on benefits and outcomes</li>
        <li>Added case studies and testimonials</li>
      </ul>
    </div>
  </div>
  <div class="right">
    <div class="feature-card glass">
      <div class="eyebrow">Results</div>
      <h3 class="feature-title">Measurable Impact</h3>
      <ul class="points-clean">
        <li>2.3x increase in qualified inquiries</li>
        <li>Shorter sales cycles</li>
        <li>Higher project values</li>
      </ul>
    </div>
    <div class="glass-frame short">
      <div class="placeholder">Before/After metrics chart</div>
    </div>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Technology Stack

<div class="feature-grid mt-2">
  <div class="feature-card">
    <div class="eyebrow">Frontend</div>
    <ul class="points-clean">
      <li>Vue / React</li>
      <li>TypeScript</li>
      <li>Tailwind-like utility approach</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow">Backend</div>
    <ul class="points-clean">
      <li>Static-first, Jamstack</li>
      <li>Edge deploy</li>
      <li>Content via Markdown / CMS</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow">Tooling</div>
    <ul class="points-clean">
      <li>CI/CD to Netlify/Vercel</li>
      <li>Analytics & SEO tooling</li>
      <li>Automated image optimizations</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow">Performance</div>
    <ul class="points-clean">
      <li>Code-splitting</li>
      <li>Lazy media</li>
      <li>Pre-rendered pages</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow">Accessibility</div>
    <ul class="points-clean">
      <li>Keyboard navigable</li>
      <li>Color contrast checked</li>
      <li>ARIA where needed</li>
    </ul>
  </div>
  <div class="feature-card">
    <div class="eyebrow">Security</div>
    <ul class="points-clean">
      <li>Headers and CSP defaults</li>
      <li>Form validation</li>
      <li>Privacy-first analytics</li>
    </ul>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Pricing Options

<div class="card-grid three mt-2">
  <div class="feature-card">
    <div class="eyebrow">Starter</div>
    <h3 class="feature-title">$799</h3>
    <ul class="points-clean">
      <li>1-page portfolio</li>
      <li>Basic SEO</li>
      <li>Launch support</li>
    </ul>
    <button class="btn-secondary mt-2">Get Started</button>
  </div>
  <div class="feature-card">
    <div class="pill">Popular</div>
    <h3 class="feature-title">$2,499</h3>
    <ul class="points-clean">
      <li>Multi-page site</li>
      <li>Case study templates</li>
      <li>Analytics & SEO pack</li>
      <li>Performance tuning</li>
    </ul>
    <button class="btn-primary mt-2">Choose Plan</button>
  </div>
  <div class="feature-card">
    <div class="eyebrow">Custom</div>
    <h3 class="feature-title">From $5,000</h3>
    <ul class="points-clean">
      <li>Tailored design system</li>
      <li>CMS integration</li>
      <li>Advanced animations</li>
    </ul>
    <button class="btn-secondary mt-2">Contact</button>
  </div>
</div>

</OceanFrame>

---

<OceanFrame>

# Testimonials

<div class="card-grid two mt-2">
  <div class="feature-card glass">
    <p class="muted">"The new portfolio elevated our brand instantly. Leads are better, conversations are easier."</p>
    <div class="mt-2">
      <strong>Alex Rivera</strong><br>
      <span class="text-xs muted">Founder, Clearline Studio</span>
    </div>
  </div>
  <div class="feature-card glass">
    <p class="muted">"Thoughtful design and excellent performance. Our time on page tripled."</p>
    <div class="mt-2">
      <strong>Maya Chen</strong><br>
      <span class="text-xs muted">Director, Vertex Labs</span>
    </div>
  </div>
</div>

</OceanFrame>

---

layout: center
class: text-center
---

<OceanFrame noSidebar>

# Next Steps

<div class="cta-band">
  <div>
    <div class="overline">Get Started Today</div>
    <h2 class="text-hero">Let’s Craft a Compelling Portfolio</h2>
    <p class="muted">Clarity, credibility, and conversions—beautifully executed.</p>
    <div class="cta-actions">
      <button class="btn-primary">Book a Call</button>
      <button class="btn-secondary">Download Brief</button>
    </div>
  </div>
  <div>
    <div class="card">
      <div class="eyebrow">Contact</div>
      <ul class="points-clean">
        <li>Email: hello@yoursite.com</li>
        <li>Web: yoursite.com</li>
        <li>City: Remote / Worldwide</li>
      </ul>
      <div class="muted small mt-4">© 2025 Your Name</div>
    </div>
  </div>
</div>

<div class="mt-4 subtle">Press S for presenter mode • Press E to open editor • Use arrow keys to navigate</div>

</OceanFrame>
