clc
clear all

str=input('Please enter a code to break: ','s');
dig=str-'0';

if length(dig)~=9
    disp('Decoy Message: Not a nine-digit number.');
else
    if mod(sum(dig),2)~=0
      disp('Decoy Message: Sum is odd.');
        else
            res_day=dig(1)*dig(3)-dig(5);
            res_pt_flag=mod(dig(2)*dig(4)-dig(6),3);
                if res_pt_flag==0
                    res_pt=dig(7)-dig(9);
                else
                    res_pt=dig(8)-dig(9);
                end
                
                if res_day<0||res_day>7
                    disp('Decoy Message: Invalid rescue day.');
                else
                    if res_pt<0||res_pt>7
                        disp('Decoy Message: Invalid rendezvous point.');
                    else
                        switch res_day
                            case 1 
                                res_day='Monday';
                            case 2 
                                res_day='Tuesday';
                            case 3
                                res_day='Wednesday';
                            case 4
                                res_day='Thursday';
                            case 5
                                res_day='Friday';
                            case 6
                                res_day='Saturday';
                            case 7
                                res_day='Sunday';
                        end
                        
                        switch res_pt
                            case 1 
                                res_pt='bridge';
                            case 2 
                                res_pt='library';
                            case 3
                                res_pt='river crossing';
                            case 4
                                res_pt='airport';
                            case 5
                                res_pt='bus terminal';
                            case 6
                                res_pt='hospital';
                            case 7
                                res_pt='St. Petes Church';
                        end
                        
                        disp(['Rescue on ' res_day ' at the ' res_pt]);
                    end
                end
    end
end
    
    



