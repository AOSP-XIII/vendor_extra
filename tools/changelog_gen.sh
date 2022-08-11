#!/bin/bash

if [ "$1" ]; then
	DEVICE="$1"
else
	DEVICE=$(awk -F'_' '{print $NF}' <<<"$TARGET_PRODUCT")
fi

if ! [ -e "changelog_$DEVICE.txt" ]; then
	curl -s "https://raw.githubusercontent.com/AOSP-XIII/releases/changelog_$DEVICE.txt" -o "changelog_$DEVICE.txt"
fi

last_date=$(head -n2 "changelog_$DEVICE.txt" | tail -n1)
echo -e "==========\n$(date +%F)\n==========" >changelog.tmp

while read project; do
	git_log=$(git -C "$project" log --after="$last_date" --abbrev=6 --date=local --format=tformat:"%h %s [%an] (%cd)")
	if [ -n "$git_log" ]; then
		echo "$project"
		echo "$project:" >>changelog.tmp
		echo -e "$git_log\n" >>changelog.tmp
	fi
done <.repo/project.list

echo -e "$(cat changelog.tmp "changelog_$DEVICE.txt")" >"changelog_$DEVICE.txt"
