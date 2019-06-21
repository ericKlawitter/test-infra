#!/bin/bash

# Generates a repo_groups.sql file which is required by the devstats binaries
# for updating the gha_repo_groups table.

DIR="/mount/data/src/test-infra/devstats/knative/"

mkdir -p ${DIR}
echo "update gha_repos set repo_group = name;
update gha_repos set alias = name;

select
  repo_group,
  count(*) as number_of_repos
from
  gha_repos
where
  repo_group is not null
group by
  repo_group
order by
  number_of_repos desc,
  repo_group asc
;" > ${DIR}/repo_groups.sql

