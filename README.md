# Nainar Mohamed — Resume

Professional resume built from the public LinkedIn profile
[linkedin.com/in/nainar-mohamed-97159410b](https://www.linkedin.com/in/nainar-mohamed-97159410b).

## Deliverable

- **[Nainar_Mohamed_Resume.pdf](./Nainar_Mohamed_Resume.pdf)** — print-ready A4 resume

## Files

| Path | Purpose |
| --- | --- |
| `resume.html` | Source layout (edit content here) |
| `assets/profile-photo.png` | Photo used in the sidebar |
| `generate-pdf.sh` | Regenerates the PDF via headless Chrome |
| `Nainar_Mohamed_Resume.pdf` | Generated resume |

## Replace the profile photo

LinkedIn blocks guest access to the live profile headshot, so the repo ships with a branded **NM** monogram.

1. Save your LinkedIn photo as `assets/profile-photo.png` (or `.jpg`).
2. Run `./generate-pdf.sh`.

Square images work best; the layout crops to a circle.

## Regenerate PDF

```bash
./generate-pdf.sh
```

Requires Google Chrome / Chromium.
