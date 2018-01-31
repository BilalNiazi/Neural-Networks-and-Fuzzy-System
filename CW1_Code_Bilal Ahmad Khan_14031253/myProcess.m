function[inputdata,targetdata,testinput,testtarget] = myProcess(data) 
                               % function myProcess takes data as an input and returns back dataset
                               % for training and testing the neural network.
data(data==0) = round(mean(data(:,7)));% taking mean of the 7th column where
                                       % question marks were replaced with zeros.
inputdata = data(1:242606,1:3);  % 70% input data of the dataset for training the neural network.
targetdata = data(1:242606,4);   % 70% target data of the dataset for training the neural network.
testinput = data(242607:245057,1:3);% 30% test input of the dataset for testing the neural network.
testtarget = data(242607:245057,4); % 30% test target input of the dataset for testing the neural network.
targetdata(targetdata==4) = 1; % Replacing 4's with 1's in the target data for training.
targetdata(targetdata==2) = 0; % Replacing 2's with 0's in the target data for training.
testtarget(testtarget==4) = 1; % Replacing 4's with 1's in the test target data for testing.
testtarget(testtarget==2) = 0; % Replacing 2's with 0's in the test target data for testing.

end                            % function ends.