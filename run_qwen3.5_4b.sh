vllm serve /code/vllm/qwen3.5-4b --port 8000 \
    --tensor-parallel-size 1 \
    --max-model-len 30000 \
    --reasoning-parser qwen3 \
    --gpu-memory-utilization 0.9 \
    --enable-prefix-caching \
    --mm-processor-cache-gb 0 \
    --uvicorn-log-level debug \
    --kv-cache-dtype fp8_e4m3 \
    --enable-log-requests \
    --served-model-name "Qwen/Qwen3.5-4B" \
    --cudagraph-capture-sizes 1 2 4 8 10 \
    --speculative-config '{"method": "mtp", "num_speculative_tokens": 1}' \
    --max-num-seqs 50
    
    # --profiler-config '{"profiler":"torch","torch_profiler_dir":"/code/vllm/vllm_profile_results"}'

 

    # --otlp-traces-endpoint http://localhost:4317 \
    # --collect-detailed-traces all \

    # --enforce-eager \
    # --cudagraph-capture-sizes 1 2 3 4 5 6 7 8 9 10 \
    # --cudagraph-capture-sizes 1 2 \

    # --enable-chunked-prefill \
    # --speculative-config '{"method": "mtp", "num_speculative_tokens": 1}' \
    # --speculative-config '{"method": "mtp", "num_speculative_tokens": 4}' \


# curl -X POST http://localhost:8000/start_profile
# curl -X POST http://localhost:8000/stop_profile
# https://ui.perfetto.dev/
