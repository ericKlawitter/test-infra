#!/bin/bash

mkdir -p ./grafana/dashboards/knative
dashboards="companies-stats.json companies-summary.json contributing-companies.json dashboards.json developers-summary.json first-non-author-activity.json github-events.json issues-age.json issues-repository-group.json new-and-episodic-issue-creators.json new-and-episodic-pr-contributors.json new-contributors-table.json new-prs.json opened-to-merged.json pr-comments.json project-statistics.json prs-age.json prs-authors-companies-histogram.json prs-authors-histogram.json prs-authors.json prs-merged-repository-groups.json repository-comments.json timezones-stats.json top-commenters.json user-reviews.json"
for f in $dashboards
do
  cp $GOPATH/src/devstats/grafana/dashboards/knative/$f ./grafana/dashboards/knative || exit 1
done
echo "Dashboards copied."
