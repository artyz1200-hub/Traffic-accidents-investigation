# Investigating Road Traffic Accidents

A polished exploratory data analysis of road traffic accidents in Edinburgh, focused on uncovering where collisions happen, when risk increases, and how severity changes across weather, lighting, speed, and response conditions.

## Project Overview

This project investigates a real accident dataset from Edinburgh to answer a simple but important question: what patterns can help explain road traffic risk in the city? The analysis uses `accidents.csv`, which contains 768 accident records and 31 variables covering location, severity, weather, lighting, road type, speed limits, urban or rural context, and police attendance.

The work combines data cleaning, summary statistics, geographic exploration, and visual storytelling to highlight how environment and infrastructure affect accident outcomes. The final report is designed as a Quarto document so it can be rendered cleanly for sharing, portfolio review, or presentation.

![Traffic Analysis Plot](screenshots/time_of_day_density.png)

Place this screenshot immediately after the introduction if you want to show the time-of-day severity distribution as a strong first visual.

## Key Insights & Conclusions

- Most accidents in the dataset are slight, but the risk profile changes sharply when darkness is involved, especially under normal weather conditions.
- Urban accident activity is concentrated around low speed limits, particularly 20-30 mph roads, which aligns with dense traffic and frequent conflict points.
- Rural accidents are spread across higher speed limits, and serious incidents become more prominent at 60-70 mph.
- The Edinburgh map shows a clear urban clustering of incidents rather than a random citywide spread, which supports a targeted prevention strategy.
- Police attendance is high across all severities, showing that emergency response is already deeply integrated into most incidents.
- Weather alone is not the whole story; lighting conditions appear to amplify severity more strongly than rain or fog on their own.

![Edinburgh Accident Map](screenshots/edinburgh_accident_map.png)

Use this right after the location insight to make the spatial pattern visually obvious.

![Weather and Lighting Severity](screenshots/weather_lighting_severity.png)

This works best beside the weather insight, because it visually supports the point that darkness increases the share of serious outcomes.

![Speed Limits by Area](screenshots/speed_limits_by_area.png)

Insert this after the urban vs rural insight so the reader sees the contrast in speed distribution immediately.

![Police Attendance by Severity](screenshots/police_attendance.png)

Place this at the end of the insights section as a clean conclusion visual showing response patterns across severity levels.

## Team & Contributors

- [Artur Zavistovskii](https://github.com/your-artur-github)
- [Bhuvanesh Dinesh Wadhwani](https://github.com/your-bhuvanesh-github)
- [Anastasiia Khitrova](https://github.com/your-anastasiia-github)

## How to Run

### Required R libraries

- `tidyverse`
- `psych`
- `hms`
- `viridis`
- `maps`
- `leaflet`
- `scales`

### Setup and render

1. Install the required packages:

```r
install.packages(c("tidyverse", "psych", "hms", "viridis", "maps", "leaflet", "scales"))
```

2. Make sure the dataset is available at `data/accidents.csv`.
3. Render the Quarto report:

```bash
quarto render index.qmd
```

4. Open the generated HTML output in your browser or Quarto preview.

If you prefer working from RStudio, open `index.qmd` and click Render. The report should knit cleanly as long as the package dependencies are installed and the CSV path matches the repository structure.