% emails = the loaded variable from enron_emails.mat
% concatination of all sparse word files
% output is a vector of the indices of the specified person
% input: 
% emails 21,034,793 x 3 variable that holds all variables of sparse word files 
% test_sent = array of row indices from metadata.tsv that correspond to 
%   emails sent by a specific person. (gained from preprocessing) 
    

function[Index] = lamphier_index( emails, test_sent )
    % inherently don't know size
    Index = [];
    
    upperb = size(test_sent,1);
    % goes through first column of emails and extracts all rows matching emails from user
    for i = 1:upperb
        Index = [ Index; emails( emails(:,1) == test_sent(i,1), : )];
    end
end
