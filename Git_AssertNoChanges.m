function Git_AssertNoChanges(assertOnMasterBranch)
% cause an error 

if ~exist('assertOnMasterBranch','var')
    assertOnMasterBranch = 1;
end

[~, git_status] = unix('git status');
lines = strsplit(git_status,'\n');

if assertOnMasterBranch
    assert(strcmp(lines{1},'On branch master'),'Not on master branch');
end

assert(strcmp(lines{end-1},'nothing to commit, working tree clean'),...
    'untracked changes - aborting\n\nGit Status:\n%s',git_status);


end