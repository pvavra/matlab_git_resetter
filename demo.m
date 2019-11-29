
% comment this out, to test the Git_Reset() function below
Git_AssertNoChanges()

Git_Reset()

% Change this number, to see that this cannot be affected by the above
% Git_Reset(). This is because this script-file gets compiled and hence
% cannot be affected by the git reset call.
x = 1
% Change the inside of this function to see that any sub-function WILL get
% affected by the Git_Reset() call. Hence, structuring your code to into
% sub-functions can, in combination with the Git_Reset() function, be used
% to assert that only the most recent version of the code will run.
y = demo_subfunction(x)

