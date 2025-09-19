<script setup lang="ts">
/**
 * PUBLIC_INTERFACE
 * OceanFrame component
 * A layout shell for Slidev slides that renders:
 * - Branded header with title and quick nav actions
 * - Left navigation sidebar with anchors to key sections
 * - Footer with brand and contact
 * - Content slot for actual slide content
 *
 * Props:
 *  - noSidebar: boolean to hide sidebar on specific slides (e.g., finale)
 */
import { onMounted, ref } from 'vue';

const props = defineProps<{ noSidebar?: boolean }>();

const sections = [
  { id: 'Portfolio Website Showcase', label: 'Intro' },
  { id: 'Vision & Design Philosophy', label: 'Philosophy' },
  { id: 'Feature Highlights', label: 'Features' },
  { id: 'Experience & Flow', label: 'Experience' },
  { id: 'Information Architecture', label: 'IA' },
  { id: 'Visual Language', label: 'Visuals' },
  { id: 'Components & Sections', label: 'Components' },
  { id: 'Benefits', label: 'Benefits' },
  { id: 'Case Study Snapshot', label: 'Case Study' },
  { id: 'Technology Stack', label: 'Tech' },
  { id: 'Pricing Options', label: 'Pricing' },
  { id: 'Testimonials', label: 'Social Proof' },
  { id: 'Next Steps', label: 'Next Steps' },
];

const activeLabel = ref<string>(sections[0].label);

onMounted(() => {
  // Attempt to infer active section from first h1 in slide content
  const h1 = document.querySelector('.slidev-page.current h1');
  if (h1?.textContent) {
    const match = sections.find(s => s.id === h1.textContent?.trim());
    if (match) activeLabel.value = match.label;
  }
});

function goTo(label: string) {
  // Slidev internally navigates via keyboard or mouse,
  // for sidebar we just hint at section names visually.
  activeLabel.value = label;
}
</script>

<template>
  <div class="ocean-frame">
    <header class="ocean-header">
      <div class="brand">
        <div class="brand-mark" />
        <div class="brand-meta">
          <strong>Ocean Professional</strong>
          <span>Portfolio Showcase</span>
        </div>
      </div>
      <div class="header-actions">
        <a class="chip" href="#" @click.prevent>Live</a>
        <a class="chip amber" href="#" @click.prevent>Case Study</a>
        <a class="chip ghost" href="#" @click.prevent>Contact</a>
      </div>
    </header>

    <div class="ocean-body">
      <aside v-if="!props.noSidebar" class="ocean-sidebar">
        <nav>
          <ul>
            <li
              v-for="s in sections"
              :key="s.label"
              :class="{ active: s.label === activeLabel }"
            >
              <a href="#" @click.prevent="goTo(s.label)">
                <span class="dot" />
                {{ s.label }}
              </a>
            </li>
          </ul>
        </nav>
      </aside>

      <main class="ocean-content">
        <slot />
      </main>
    </div>

    <footer class="ocean-footer">
      <div class="left">
        <span class="foot-brand">© 2025 Your Name</span>
      </div>
      <div class="right">
        <span class="foot-link">yoursite.com</span>
        <span class="sep">•</span>
        <span class="foot-link">hello@yoursite.com</span>
      </div>
    </footer>
  </div>
</template>

<style scoped>
/* Map Ocean Professional brand to light surfaces per style guide */
:host, .ocean-frame {
  --ocean-primary: #2563EB;  /* blue */
  --ocean-amber: #F59E0B;    /* amber */
  --ocean-error: #EF4444;
  --ocean-bg: #f9fafb;       /* background */
  --ocean-surface: #ffffff;  /* surface */
  --ocean-text: #111827;     /* text */
  --ocean-border: #e5e7eb;

  --ocean-grad: linear-gradient(180deg, rgba(37,99,235,0.08), rgba(255,255,255,0.6));
  --ocean-shadow: 0 10px 30px rgba(17,24,39,0.08);
}

.ocean-frame {
  background: var(--ocean-bg);
  color: var(--ocean-text);
  height: 100%;
  width: 100%;
  display: grid;
  grid-template-rows: auto 1fr auto;
  border-radius: 16px;
  overflow: clip;
}

/* Header */
.ocean-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 12px;
  padding: 10px 16px;
  background: var(--ocean-surface);
  border-bottom: 1px solid var(--ocean-border);
  box-shadow: var(--ocean-shadow);
}

.brand {
  display: flex;
  align-items: center;
  gap: 12px;
}
.brand-mark {
  width: 28px; height: 28px; border-radius: 8px;
  background: linear-gradient(135deg, var(--ocean-primary), #60a5fa);
  box-shadow: 0 6px 18px rgba(37,99,235,0.35);
}
.brand-meta {
  display: grid;
  line-height: 1.05;
  font-size: 12px;
}
.brand-meta strong { font-size: 13px; }

/* Header chips */
.header-actions { display: flex; gap: 8px; }
.chip {
  display: inline-flex; align-items: center; gap: 8px;
  padding: 6px 10px; border-radius: 999px;
  background: rgba(37,99,235,0.06);
  color: var(--ocean-text);
  border: 1px solid #e5e7eb;
  font-weight: 600; font-size: 12px; text-decoration: none;
}
.chip:hover { border-color: #d1d5db; }
.chip.ghost { background: transparent; }
.chip.amber { background: rgba(245,158,11,0.08); border-color: #f1c266; }

/* Body grid */
.ocean-body {
  display: grid;
  grid-template-columns: 260px 1fr;
  min-height: 0; /* allow child scroll */
}
.ocean-content {
  min-height: 0;
  overflow: auto;
  padding: 22px 24px;
  background: var(--ocean-bg);
}

/* Sidebar */
.ocean-sidebar {
  background: var(--ocean-surface);
  border-right: 1px solid var(--ocean-border);
  padding: 16px 10px;
}
.ocean-sidebar nav ul {
  list-style: none; margin: 0; padding: 0; display: grid; gap: 6px;
}
.ocean-sidebar li a {
  display: flex; align-items: center; gap: 8px;
  padding: 8px 10px; border-radius: 10px;
  color: var(--ocean-text); text-decoration: none;
  border: 1px solid transparent;
}
.ocean-sidebar li .dot {
  width: 8px; height: 8px; border-radius: 999px; background: #d1d5db;
}
.ocean-sidebar li.active .dot { background: var(--ocean-primary); }
.ocean-sidebar li.active a {
  border-color: #dbeafe;
  background: linear-gradient(180deg, rgba(219,234,254,0.55), rgba(255,255,255,0.6));
}
.ocean-sidebar a:hover { background: #f3f4f6; }

/* Footer */
.ocean-footer {
  display: flex; align-items: center; justify-content: space-between;
  background: var(--ocean-surface);
  border-top: 1px solid var(--ocean-border);
  padding: 10px 16px;
  box-shadow: var(--ocean-shadow);
  font-size: 12px;
}
.ocean-footer .right { display: flex; align-items: center; gap: 8px; color: #374151; }
.sep { opacity: 0.6; }

/* Make slide content look like full canvas but inside light scheme */
.ocean-content :deep(.title-slide) {
  background: var(--ocean-bg);
  border-radius: 12px;
  padding: 32px;
  border: 1px solid #e5e7eb;
}
.ocean-content :deep(.feature-card),
.ocean-content :deep(.problem-card),
.ocean-content :deep(.card),
.ocean-content :deep(.stat-card),
.ocean-content :deep(.glass-frame) {
  background: var(--ocean-surface) !important;
  color: var(--ocean-text) !important;
  border-color: #e5e7eb !important;
  box-shadow: var(--ocean-shadow) !important;
}
.ocean-content :deep(.btn-primary) {
  background: var(--ocean-primary) !important;
  color: white !important;
}
.ocean-content :deep(.btn-primary:hover) {
  filter: brightness(0.95);
}
.ocean-content :deep(.btn-secondary) {
  background: #f3f4f6 !important;
  color: #111827 !important;
}
</style>
