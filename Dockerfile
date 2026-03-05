# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve the following unknown-registry custom nodes (no aux_id provided):
# - CheckpointLoaderSimple
# - EmptyLatentImage
# - CLIPTextEncode
# - CLIPTextEncode
# - KSampler
# - VAEDecode
# - SaveImage

# download models into comfyui
RUN comfy model download --url https://huggingface.co/John6666/dw-pony-realistic-v10-sdxl/resolve/main/vae/diffusion_pytorch_model.safetensors --relative-path models/checkpoints --filename ponyRealism_v10.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
