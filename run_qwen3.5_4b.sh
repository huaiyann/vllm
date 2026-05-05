vllm serve /code/vllm/qwen3.5-4b --port 8000 \
    --tensor-parallel-size 1 \
    --max-model-len 10000 \
    --reasoning-parser qwen3 \
    --gpu-memory-utilization 0.9 \
    --enforce-eager \
    --enable-prefix-caching \
    --mm-processor-cache-gb 0 \
    --uvicorn-log-level debug \
    --kv-cache-dtype fp8_e4m3 \
    --enable-log-requests \
    --served-model-name "Qwen/Qwen3.5-4B" \
    --otlp-traces-endpoint http://localhost:4317 \
    --collect-detailed-traces all \
    --profiler-config '{"profiler":"torch","torch_profiler_dir":"/code/vllm/vllm_profile_results"}'

 

    # --cudagraph-capture-sizes 1 2 4 8 12 16 20 \
    # --cudagraph-capture-sizes 1 2 \
    # --quantization fp8 \
    # --enable-chunked-prefill \


# curl -X POST http://localhost:8000/start_profile
# curl -X POST http://localhost:8000/stop_profile
# https://ui.perfetto.dev/
