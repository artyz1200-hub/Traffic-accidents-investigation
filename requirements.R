
## 🛠️ Installation & Reproduction

### 📄 Requirements File (`requirements.R`)
To make dependency management clean, create a file named `requirements.R` in the root of your project and paste the following code into it:

```r
# requirements.R
# Automated dependency installer for the Traffic Accidents Investigation project

required_packages <- c("tidyverse", "psych", "hms", "viridis", "maps", "leaflet", "scales")

install_if_missing <- function(package) {
  if (!require(package, character0.only = TRUE, quietly = TRUE)) {
    install.packages(package, dependencies = TRUE)
  }
}

invisible(sapply(required_packages, install_if_missing))
message("✅ All required packages are successfully installed and ready!")
```

