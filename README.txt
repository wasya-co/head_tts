
I had to update something for it to run on mac...
This had to be updated *inside* node_modules/@huggingface/transformers:

+    "@huggingface/transformers": "4.0.1",
+    "onnxruntime-node": "1.23.2",

== with docker ==

  docker build -t headtts .

  docker run --rm \
    -p 8882:8882 \
    --name headtts \
    headtts


headtts-node.json used to have:
  "device": "webgpu",
