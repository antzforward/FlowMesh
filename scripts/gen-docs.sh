# scripts/gen-docs.sh
#!/bin/bash

# 生成API文档
swag init -g cmd/flowmesh-cli/main.go -o docs/api

# 生成CLI手册
go run cmd/flowmesh-cli/main.go docs --dir docs/manual

# 构建多语言文档
mkdocs build -f docs/i18n-spec/mkdocs.yml