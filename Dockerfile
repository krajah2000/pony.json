# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# NOTE: The workflow contains unknown_registry custom nodes that could not be resolved automatically.
# Skipping installation for unknown registry node: CheckpointLoaderSimple (no aux_id provided)

# download models into comfyui
# RUN # Could not find URL for ponyDiffusionV6XL.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
