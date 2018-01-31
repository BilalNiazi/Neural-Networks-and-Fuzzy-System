function[net] = trainNet(net,inputdata,targetdata)
                        % function trainNet takes network,input data and target
                        % data as an input and returns back a trained network. 
net = train(net,inputdata',targetdata');
                        % train(train neural network) function trains our network 
                        % according to net.trainparam. 
end                     % function ends.