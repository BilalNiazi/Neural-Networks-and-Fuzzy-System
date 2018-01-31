function[net] = myNet(inputdata,targetdata)
                             % function myNet takes input data and target data as an input 
                             % and returns back the created network.
net = newff(inputdata',targetdata',20 ,{'tansig' 'purelin'},'trainlm','learngd','mse');
                             % feed-forward backpropagation network has been used here.
net.trainparam.epochs = 300; % number of iterations.
net.trainparam.max_fail = 100; % maximum validation checks.
net.trainparam.lr = 0.02;    % learning rate of the network.
net.trainparam.goal = 0.01;  % network goal.

end                          % function ends.