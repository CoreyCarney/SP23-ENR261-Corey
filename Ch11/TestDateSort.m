clc;
clear;
TEST_NAME = 'TestDateSort';
addpath('..\..\Homework Solutions\Ch 11\');
assert(true == true, 'Smoke test failed, True ~= True');

% Check scalar case
dates = [2018, 04, 12];
result = DateSort(dates);
assert(isequal(dates, result), 'Scalar date case is not correct');

% Check simple case
dates = [2018, 02, 09; 2018, 04, 12];
expected = [2018, 04, 12; 2018, 02, 09];
result = DateSort(dates);
assert(isequal(result, expected), 'Simple case is not correct');

% Check case with many values and duplicate dates
dates = [2018, 02, 09; ...
        2018, 04, 12; ...
        2018, 04, 12; ...
        2018, 01, 29; ...
        2015, 03, 30; ...
        2017, 10, 01; ...
        2017, 05, 24];
expected = [2018, 04, 12; ...
            2018, 04, 12; ...
            2018, 02, 09; ...
            2018, 01, 29; ...
            2017, 10, 01; ...
            2017, 05, 24; ...
            2015, 03, 30];
result = DateSort(dates);
assert(isequal(result, expected), 'Duplicate date case is not correct');

fprintf('Congrats, all tests ran green for %s!\n\n', TEST_NAME);
