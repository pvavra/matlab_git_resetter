function Git_Reset(useHardReset, removeUntracked)
% Git_Reset(useHardReset) resets current folder to last commited version 
% 
% Use at the beginning of a script, to assert it is running the most recent
% version

if ~exist('removeUntracked','var')
    removeUntracked = 1;
end

% reset all tracked files to last commit
[~,~]=unix('git reset --hard HEAD');

if removeUntracked
    unix('git clean -f');
end

end