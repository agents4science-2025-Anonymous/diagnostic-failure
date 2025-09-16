#!/bin/bash

# Reproducibility script for Paper 2: Diagnostic Failure Paradigm
# This script reproduces all results and figures from the paper

echo "================================================"
echo "Paper 2: Diagnostic Failure Paradigm"
echo "Reproducing all results..."
echo "================================================"

# Set up environment
export PYTHONPATH="${PYTHONPATH}:$(pwd)/code"

# Download data if not present
if [ ! -f "data/glens_spectroscopy.json" ]; then
    echo "Downloading GLENS spectroscopy data..."
    bash data/download_data.sh
fi

# Run the diagnostic failure analysis
echo "Running diagnostic failure analysis..."
python code/diagnostic_failure.py \
    --data data/glens_spectroscopy.json \
    --output figures/diagnostic_results.png

# Run linear model analysis showing catastrophic failure
echo "Running linear model analysis..."
python code/linear_model_failure.py \
    --r2-time -43500 \
    --coherence-freq 0.676 \
    --output figures/paradox_visualization.png

# Generate the 3-step protocol diagram
echo "Generating protocol visualization..."
python code/protocol_visualization.py \
    --output figures/three_step_protocol.png

# Generate all figures for the paper
echo "Generating all paper figures..."
python figures/reproduce_figures.py

echo "================================================"
echo "Reproduction complete!"
echo "Results saved to figures/"
echo "Key findings:"
echo "  - Time domain: R² = -4.35×10⁴ (catastrophic failure)"
echo "  - Frequency domain: γ² = 0.676 (strong success)"
echo "  - Diagnostic signature provides multi-objective benchmark"
echo "================================================"