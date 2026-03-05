# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# The workflow provided only unknown_registry custom nodes with no aux_id (no GitHub repo provided),
# so they cannot be automatically installed or cloned. Listed below are the unresolved nodes from the workflow:
# Could not resolve unknown custom node: CLIPTextEncode
# Could not resolve unknown custom node: CLIPTextEncode
# Could not resolve unknown custom node: EmptyLatentImage
# Could not resolve unknown custom node: KSampler
# Could not resolve unknown custom node: VAEDecode
# Could not resolve unknown custom node: SaveImage
# Could not resolve unknown custom node: CheckpointLoaderSimple

# download models into comfyui
# RUN # Could not find URL for ponyDiffusionV6XL.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
