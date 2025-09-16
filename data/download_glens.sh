#!/bin/bash

# Download GLENS Climate Intervention Data for Spectroscopy Analysis
# This script downloads the NCAR CESM1-WACCM GLENS dataset used in the paper

echo "================================================"
echo "GLENS Data Download Script"
echo "For: The Diagnostic Failure Paradigm paper"
echo "================================================"

# Create data directory if it doesn't exist
mkdir -p glens_data

echo ""
echo "Downloading GLENS climate intervention data..."
echo "Data source: NCAR Climate Data Gateway"
echo ""

# Note: These are example commands. Actual GLENS data requires:
# 1. Registration at https://www.earthsystemgrid.org/
# 2. Authentication credentials
# 3. Acceptance of data use terms

cat << 'EOF'
To download GLENS data:

1. Register at NCAR Climate Data Gateway:
   https://www.earthsystemgrid.org/dataset/ucar.cgd.ccsm4.GLENS.html

2. Use wget with authentication:
   wget --user=YOUR_USERNAME --password=YOUR_PASSWORD \
        https://www.earthsystemgrid.org/dataset/ucar.cgd.ccsm4.GLENS/file/b.e15.B5505C5WCCML45BGCR.f09_g16.feedback.001.cam.h0.TREFHT.201001-209912.nc

3. Key variables for spectroscopy analysis:
   - TREFHT: Reference height temperature
   - PRECT: Total precipitation
   - FSNT: Net solar flux at top of model
   - FLNT: Net longwave flux at top of model

4. Process with spectroscopy tools:
   python analyze_spectroscopy.py --input glens_data/

EOF

echo ""
echo "For demonstration purposes, creating sample metadata..."

# Create metadata file
cat > glens_data/metadata.json << 'EOF'
{
  "dataset": "GLENS",
  "source": "NCAR CESM1-WACCM",
  "variables": ["TREFHT", "PRECT", "FSNT", "FLNT"],
  "time_range": "2010-2099",
  "ensemble_members": 20,
  "reference": "Tilmes et al. (2018)",
  "doi": "10.5065/D6JH3JXX"
}
EOF

echo "Metadata file created: glens_data/metadata.json"
echo ""
echo "================================================"
echo "Download script complete."
echo "Please follow instructions above for actual data."
echo "================================================"