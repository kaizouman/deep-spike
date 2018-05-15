cd cc
./build.sh
cd ..
PYTHONPATH=.:${PYTHONPATH} python3 bin/digit_binarized_quantized_weights.py
