---
name: AccessLift Design System
colors:
  surface: '#fbf9f8'
  surface-dim: '#dcd9d9'
  surface-bright: '#fbf9f8'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f5f3f3'
  surface-container: '#f0eded'
  surface-container-high: '#eae8e7'
  surface-container-highest: '#e4e2e1'
  on-surface: '#1b1c1c'
  on-surface-variant: '#5b403d'
  inverse-surface: '#303030'
  inverse-on-surface: '#f2f0f0'
  outline: '#8f6f6c'
  outline-variant: '#e4beba'
  surface-tint: '#ba1a20'
  primary: '#af101a'
  on-primary: '#ffffff'
  primary-container: '#d32f2f'
  on-primary-container: '#fff2f0'
  inverse-primary: '#ffb3ac'
  secondary: '#005faf'
  on-secondary: '#ffffff'
  secondary-container: '#54a0fe'
  on-secondary-container: '#003567'
  tertiary: '#005f7b'
  on-tertiary: '#ffffff'
  tertiary-container: '#00799c'
  on-tertiary-container: '#e9f7ff'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#ffdad6'
  primary-fixed-dim: '#ffb3ac'
  on-primary-fixed: '#410003'
  on-primary-fixed-variant: '#930010'
  secondary-fixed: '#d4e3ff'
  secondary-fixed-dim: '#a5c8ff'
  on-secondary-fixed: '#001c3a'
  on-secondary-fixed-variant: '#004786'
  tertiary-fixed: '#bee9ff'
  tertiary-fixed-dim: '#7bd1f8'
  on-tertiary-fixed: '#001f2a'
  on-tertiary-fixed-variant: '#004d65'
  background: '#fbf9f8'
  on-background: '#1b1c1c'
  surface-variant: '#e4e2e1'
typography:
  display-lg:
    fontFamily: Inter
    fontSize: 48px
    fontWeight: '700'
    lineHeight: 56px
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Inter
    fontSize: 36px
    fontWeight: '700'
    lineHeight: 44px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
    letterSpacing: -0.01em
  headline-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 20px
    letterSpacing: 0.01em
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  unit: 4px
  container-max: 1280px
  gutter: 24px
  margin-desktop: 64px
  margin-mobile: 20px
  stack-sm: 8px
  stack-md: 16px
  stack-lg: 32px
---

## Brand & Style
The design system for AccessLift is built on the pillars of reliability, urgency, and professional authority. Targeted at facility managers, property owners, and corporate stakeholders, the UI must evoke a sense of trust and immediate action. 

The aesthetic follows a **Modern Corporate** direction. It prioritizes clarity and conversion through a structured information hierarchy. By utilizing heavy whitespace and a restricted color palette, we ensure that the primary red brand color serves as a high-contrast signal for critical actions and brand presence. The interface is intentionally unadorned to maintain a utilitarian, high-performance feel that aligns with industrial and service-based reliability.

## Colors
The palette is dominated by a "Professional Red" (#D32F2F) which is reserved for primary actions, logos, and critical status indicators. This is balanced against a pristine white background to maximize legibility and perceived cleanliness.

- **Primary:** #D32F2F. Used for primary CTA buttons, active states, and brand accents.
- **Neutral High:** #212121. Used for primary headings and body text to ensure WCAG AAA compliance.
- **Neutral Mid:** #757575. Used for secondary labels and placeholder text.
- **Neutral Low:** #E0E0E0. Used for hair-line borders and dividers.
- **Surface:** #F5F5F5. Used for subtle section nesting and card backgrounds to provide soft contrast against the white base.

## Typography
This design system utilizes **Inter** exclusively to leverage its systematic, utilitarian nature. The type scale is optimized for readability and clear information architecture.

- **Headings:** Use tight letter-spacing (-0.01em to -0.02em) for larger sizes to maintain a compact, "heavy" corporate feel.
- **Body:** Standard spacing for maximum legibility in service descriptions and technical specifications.
- **Labels:** Use medium weights (500-600) to ensure small text remains legible against gray backgrounds. Uppercase is reserved for short category labels or overlines.

## Layout & Spacing
The layout follows a **Fixed Grid** model for desktop to maintain professional alignment, transitioning to a fluid model for mobile devices.

- **Grid:** A 12-column grid on desktop (1280px max-width) with 24px gutters. On mobile, a 4-column grid with 20px side margins.
- **Vertical Rhythm:** Built on a 4px baseline. Components should use increments of 8px for internal padding (e.g., 16px, 24px, 32px) to ensure visual balance.
- **Sectioning:** Large vertical gaps (80px - 120px) should be used between homepage sections to allow the content to breathe and reduce cognitive load during the conversion process.

## Elevation & Depth
This design system utilizes **Low-contrast outlines** and **Tonal layers** rather than heavy shadows to maintain a clean, modern aesthetic. 

- **Surface Levels:** The primary background is Level 0 (White). Level 1 (F5F5F5) is used for cards and inset sections. 
- **Borders:** Cards and containers use a 1px solid border (#E0E0E0).
- **Interactivity:** Soft, ambient shadows (0px 4px 12px rgba(0,0,0,0.05)) are permitted only on hover states for interactive cards to provide immediate tactile feedback without cluttering the static view.

## Shapes
The shape language is **Soft** but disciplined. This subtle rounding (4px - 8px) bridges the gap between industrial rigidity and modern software accessibility.

- **Small Components:** Checkboxes and small tags use 4px (0.25rem) corners.
- **Primary Elements:** Buttons and Input fields use 4px (0.25rem) to maintain a sharp, professional look.
- **Large Containers:** Cards and Modals use 8px (0.5rem) to soften the overall layout.

## Components
- **Buttons:** Primary buttons are solid #D32F2F with white text. They should have no gradient. Secondary buttons use a 1px border of #D32F2F with red text.
- **Cards:** White background with a #E0E0E0 border. Padding should be generous (min 24px). For "Plan" or "Service" cards, a top-accent border in Primary Red can be used to denote "Featured" status.
- **Inputs:** Standardized 48px height for desktop. Use #E0E0E0 borders that transition to #D32F2F on focus. 
- **Chips/Status:** For "Service Status," use a subtle background tint of the status color with a high-contrast label (e.g., light red background with dark red text).
- **Service Lists:** Use consistent iconography paired with Headline-MD. Icons should be simplified, mono-line drawings in Neutral High.