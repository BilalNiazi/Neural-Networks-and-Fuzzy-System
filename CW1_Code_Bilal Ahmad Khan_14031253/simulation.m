function percentage = simulation(trainedNet,testinput,testtarget)
                                              % simulation function takes a trained 
                                              % network,testinput and testtarget as an
                                              % input returns back our accuracy in terms of percentage.
roundit = round(sim(trainedNet,testinput'));  % sim returns an object that contains
                                              % all of the logged simulation results
                                              % and round rounds it towords nearest decimal.
checkarray = roundit' == testtarget;          % comparing network output and target output and saving.
ones = find(checkarray == 1);                 % finding number of 1's from saved reslults.
countones = length(ones);                     % counting number 1's.
percentage = countones/length(testtarget)*100;% taking percentage of 1's in total test target.
fprintf('Accuracy = %i%', round(percentage)); % printing the round results. 
fprintf(' percent');
fprintf('\n');                                % new line character.

end                                           % function ends.

