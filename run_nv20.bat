@echo off
setlocal enableextensions

set "PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb=128"
set "FRAMEPACK_DISABLE_BF16=1"
set "FRAMEPACK_DISABLE_FLASH_ATTN=1"
set "FRAMEPACK_FORCE_FP16=1"

if exist "venv\Scripts\activate" (
    call "venv\Scripts\activate"
) else if exist ".venv\Scripts\activate" (
    call ".venv\Scripts\activate"
)

python demo_gradio.py --server 0.0.0.0 --port 7860

endlocal
