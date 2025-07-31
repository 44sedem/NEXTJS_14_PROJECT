# Google Fonts and Turbopack Issue

## Problem

When using Turbopack with Next.js 15.3.3 and Google Fonts, the following error occurs:

```
Module not found: Can't resolve '@vercel/turbopack-next/internal/font/google/font'
```

This error specifically occurs when:
1. Using the `--turbopack` flag with `next dev`
2. Importing Google Fonts using `next/font/google` (in this project, the Geist and Geist_Mono fonts)

## Solution

The issue appears to be a compatibility problem between Turbopack and Google Fonts in Next.js 15.3.3. Two solutions are available:

### Option 1: Run without Turbopack (Recommended)

Use the standard Next.js development server without Turbopack:

```bash
npm run dev
```

This works correctly with Google Fonts and avoids the module resolution error.

### Option 2: Use Turbopack without Google Fonts

If you need Turbopack's performance benefits, you would need to remove or replace the Google Fonts with local fonts or CSS imports.

## Implementation

The project has been configured with two npm scripts:

- `npm run dev` - Runs Next.js without Turbopack (works with Google Fonts)
- `npm run dev:turbo` - Runs Next.js with Turbopack (will encounter the Google Fonts error)

## Technical Details

The error occurs in the following import in `src/app/layout.tsx`:

```typescript
import { Geist, Geist_Mono } from "next/font/google";
```

This import works fine with the standard Next.js development server but fails with Turbopack.
