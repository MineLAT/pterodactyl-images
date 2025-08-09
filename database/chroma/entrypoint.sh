#!/bin/bash

# Move to container folder
cd /home/container

# Set current IP as environment variable
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Print Python version
printf "\033[1m\033[33mcontainer~ \033[0mpython --version\n"
python --version

# Print ChromaDB version
CHROMA_VERSION=$(python -c "import chromadb; print(chromadb.__version__)")
printf "\033[1m\033[33mcontainer~ \033[0m"
echo "Running ChromaDB v$CHROMA_VERSION"

# Convert all of the "{{VARIABLE}}" parts of the command into the expected shell
# variable format of "${VARIABLE}" before evaluating the string and automatically
# replacing the values.
FINAL_STARTUP=$(echo "$STARTUP" | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo ":/home/container$ ${FINAL_STARTUP}"

# Display the final startup command we're running in the output, and then execute it with eval
printf "\033[1m\033[33mcontainer~ \033[0m"
echo "$FINAL_STARTUP"
# shellcheck disable=SC2086
eval $FINAL_STARTUP