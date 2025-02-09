#!/bin/bash -e

DEFAULT_PROJECT_NAME="GradleInit"
echo "Project name (defaults to $DEFAULT_PROJECT_NAME):"
read -r PROJECT_NAME
PROJECT_NAME=${PROJECT_NAME:-$DEFAULT_PROJECT_NAME}

REPO_URL="https://github.com/chriptus13/GradleInit"
ZIP_URL="$REPO_URL/archive/refs/heads/main.zip"
GRADLE_INIT_FOLDER="GradleInit-main"
ZIP_FILE="gradle_init.zip"
INIT_SCRIPT="init.sh"

wget -O "$ZIP_FILE" $ZIP_URL > /dev/null 2>&1

unzip "$ZIP_FILE" -d "$PROJECT_NAME" > /dev/null 2>&1
rm "$ZIP_FILE"

shopt -s dotglob  # Enable dotfile matching
mv -f "$PROJECT_NAME/$GRADLE_INIT_FOLDER"/* "$PROJECT_NAME"
shopt -u dotglob  # Disable dotfile matching

rmdir "$PROJECT_NAME/$GRADLE_INIT_FOLDER"
rm -f "$PROJECT_NAME/$INIT_SCRIPT"
rm -rf "$PROJECT_NAME/.github"

# Change names
printf "# %s\n" "$PROJECT_NAME" > "$PROJECT_NAME/README.md"

if [[ "$(uname)" == "Darwin" ]]; then
    sed -i '' "s/$DEFAULT_PROJECT_NAME/$PROJECT_NAME/g" "$PROJECT_NAME/settings.gradle.kts"
else
    sed -i "s/$DEFAULT_PROJECT_NAME/$PROJECT_NAME/g" "$PROJECT_NAME/settings.gradle.kts"
fi


echo "Project $PROJECT_NAME initialized via $REPO_URL at ./$PROJECT_NAME"
