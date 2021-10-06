#!/bin/bash
# 1. Create a new git branch
# 2. Clean out repo (delete everything except build_scripts folder and .git folder)
# 3. Update version in swagger-codegen-cli-ruby-config.json
# 4. Run this script from the root of the repo ( e.g. "build_scripts/generate.sh 1.10.8")
# 5. Check previous commits to check required manual fixups (may or may not stil be required)
version=$1
docker run -u $(id -u) --rm -v ${PWD}:/local swaggerapi/swagger-codegen-cli generate -i "https://raw.githubusercontent.com/goharbor/harbor/v${version}/api/harbor/swagger.yaml" -l ruby -c /local/build_scripts/swagger-codegen-cli-ruby-config.json -o /local/
