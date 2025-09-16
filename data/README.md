# Diagnostic Failure Paradigm - Experimental Data

## Overview
This directory contains the experimental results and data used in "The Diagnostic Failure Paradigm: Learning from What Classical Methods Cannot Capture in Climate Intervention Analysis"

## Data Files

### iris_spectroscopy_analysis_results.json
- Complete spectroscopy analysis results from IRIS atmospheric monitoring
- Contains frequency-domain and time-domain analysis
- Shows the diagnostic failure patterns identified in classical methods
- Key metrics: R² values, coherence measurements, phase relationships

### Download External Data
To download the full GLENS climate intervention dataset:
```bash
./download_glens.sh
```

## Key Results
- Classical models achieve R² ≈ 0 in time domain
- Frequency coherence γ² = 0.676 ± 0.03
- Catastrophic amplitude failure identified
- Phase preservation validated

## Data Provenance
- GLENS data: NCAR CESM1-WACCM simulations
- Processing: Standard spectroscopy methods
- No synthetic data used - all results from authentic institutional sources

## Reproducibility
All analysis can be reproduced using the scripts in the `code/` directory with these data files.