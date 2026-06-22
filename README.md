
# Investigating Road Traffic Accidents in Edinburgh

<p align="center">
  <a href="https://artyz1200-hub.github.io/Traffic-accidents-investigation/">
    <img src="https://img.shields.io/badge/📊%20View%20Interactive%20Report-Click%20Here-blue?style=for-the-badge&logo=quarto&logoColor=white" alt="View Interactive Report" size="large"/>
  </a>
</p>

<p align="center">
  <strong>Click the badge above to view the full interactive report with dynamic Leaflet maps, advanced profiling, and responsive charts directly in your browser!</strong>
</p>




## 📌 Project Overview

This project explores a real-world road accident dataset from Edinburgh to identify the key factors that influence traffic risk and crash severity across the city.

Using a rich dataset containing 31 variables and detailed accident records, we carried out a complete analytical workflow that included data cleaning, exploratory statistical analysis, and spatial-temporal visualization. The study combines traditional data analysis with visual storytelling to reveal meaningful patterns hidden within the data.

Rather than simply reporting accident counts, our objective is to generate actionable insights into how road infrastructure, speed limits, weather conditions, and lighting environments interact to shape accident risk. The entire analysis and final report are presented as a fully reproducible, self-contained Quarto document, ensuring transparency and ease of replication.




## 👥 Team & Contributors



* **Artur Zavistovskyi** — [GitHub Profile](https://github.com/artyz1200-hub)
* **Bhuvanesh Dinesh Wadhwani** — [GitHub Profile](https://github.com/BhuvaneshWadhwani)
* **Anastasiia Khitrova** — [GitHub Profile](https://github.com/hitrova27-svg)



## 📊 Visual Insights & Analytics

### 1. Temporal Risk Analysis: Weekdays vs. Weekends
The timing and severity of traffic incidents shift drastically throughout the 24-hour cycle. Weekday incidents show sharp, pronounced spikes aligning with morning and evening commuting rush hours, whereas weekend crashes follow a broader distribution centered around the afternoon.

<img src="vizual_/Number_of_Accidents.png" alt="Temporal Distribution of Accidents" width="85%"/>

### 2. Spatial Mapping & Hotspot Detection
Geospatial analysis confirms significant urban clustering rather than a random citywide spread. Lower-severity incidents dominate the dense central grid, while higher-casualty crashes are scattered along arterial routes.

<img src="vizual_/Map_of_Edinburgh_Accidents.png" alt="Static Map of Edinburgh Accidents" width="85%"/>

### 3. Interactive Geospatial Dashboard
An interactive map component allows stakeholder deep-dives into localized accident zones, where marker radius corresponds dynamically to casualty counts and colors represent specific crash severities.

<img src="vizual_/LEAFLET.png" alt="Interactive Leaflet Map" width="85%"/>

### 4. Structural Distribution of Speed Limits
Analysis of infrastructure parameters highlights that the vast majority of urban incidents are heavily concentrated on low-speed roads (20–30 mph) due to frequent conflict points and pedestrian density.

<img src="vizual_/Distribution_of_Speed_Limits.png" alt="Distribution of Speed Limits" width="85%"/>

### 5. Accident Severity & Emergency Response Profiles
Evaluating environmental variables reveals that lighting conditions amplify crash severity more strongly than adverse weather like rain or fog alone. Concurrently, operational data shows a highly integrated emergency workflow, with police attendance remaining consistently high across all severity levels.

<p>
  <img src="vizual_/Sevirity.png" alt="Accident Severity Factors" width="45%" style="display: inline-block; margin-right: 2%;"/>
  <img src="vizual_/Probability_of_Police_Attendance.png" alt="Police Attendance Probability" width="45%" style="display: inline-block;"/>
</p>

---

## 💡 Key Insights & Conclusions

* **Temporal Commuter Risks:** Weekday traffic risk peaks heavily during specific rush-hour windows, demanding targeted law enforcement and traffic management during commuting hours.
* **Lighting as a Risk Multiplier:** Adverse weather conditions are hazardous, but poor or absent street lighting acts as a much stronger catalyst for increasing crash severity.
* **Speed vs. Severity:** Urban accidents dominate low-speed zones due to sheer traffic volume and complex intersections, but rural accidents at 60–70 mph demonstrate exponentially higher rates of serious and fatal outcomes.
* **Integrated Emergency Workflows:** High police attendance metrics across all severities indicate a robust, deeply integrated emergency response infrastructure already in place.


## 🛠️ Installation & Reproduction

### Required R Packages
To run the analysis locally, ensure you have the following libraries installed in your R environment:
* `tidyverse` (Data manipulation & static plotting)
* `psych` (Statistical profiling)
* `hms` & `scales` (Temporal scaling)
* `viridis` (Accessible color scales)
* `maps` & `leaflet` (Geospatial mapping)




### 🚀 How to Run the Project (Two different methods)

Before starting, ensure that the dataset is placed exactly at `data/accidents.csv`.

#### Option A: Running via VS Code (Terminal-Based Workflow)

1. Open the project folder in **VS Code**.
2. Open your terminal (`Ctrl + ~` or `Cmd + ~`) and ensure you are in the project root directory.
3. Run the requirements script to automatically install all dependencies:

```bash
   Rscript requirements.R

```

4. **To Render the Final Document:** Generate the self-contained interactive HTML file using the Quarto CLI:

```bash
   quarto render index.qmd

```

5. **To Develop and Preview:** If you want an active development server that updates live as you edit code, run:

```bash
   quarto preview index.qmd --no-browser

```

#### Option B: Running via RStudio (GUI-Based Workflow)

1. Launch **RStudio** and open your project directory (or double-click the `.Rproj` file if available).
2. Open the R Console pane and run the automated installation script:

```r
   source("requirements.R")

```

3. In the file explorer inside RStudio, click on **`index.qmd`** to open it in the editor pane.
4. **To Render the Final Document:** Look at the top toolbar of the text editor and click the **🖨️ Render** button (or use the shortcut `Ctrl + Shift + K` / `Cmd + Shift + K`). RStudio will compile the file and automatically pop up a window displaying your interactive HTML report.
5. **To View Interactive Elements:** Make sure to select "View in Browser" if the Leaflet maps require a full window to scale properly.

