#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Use Homebrew Ruby without changing the user's shell configuration.
if command -v brew >/dev/null 2>&1; then
  ruby_prefix="$(brew --prefix ruby@3.3 2>/dev/null || true)"
  if [[ -x "$ruby_prefix/bin/ruby" ]]; then
    export PATH="$ruby_prefix/bin:$PATH"
  fi
fi

bundle check || bundle install
exec bundle exec jekyll serve --host 127.0.0.1 --port 4000 \
  --config _config.yml,_config_local.yml --force_polling "$@"
