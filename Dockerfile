# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown registry custom node: CheckpointLoaderSimple (no aux_id)

# download models into comfyui
RUN comfy model download --url https://huggingface.co/hiramaru999/ponyxl_lora/blob/43fe0853e6156f6c60e19b21156d279f71865d21/tmp_Lora/Photo%202%20Style%20SDXL_LoRA_Pony%20Diffusion%20V6%20XL.safetensors --relative-path models/checkpoints --filename ponyDiffusionV6XL.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
