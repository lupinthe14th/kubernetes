#!/bin/bash

for f in kubeadm kubelet kubectl
do
    echo "          url: https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/arm64/$f"
    echo "          verification:"
    echo "            hash:"
    echo "              function: sha512"
    echo "              sum: $(sha512sum $f | cut -f 1 -d " ")"
done
