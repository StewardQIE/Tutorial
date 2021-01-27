clear; 
clc;

%% Assignment demonstration for Ass_1_ENCMP100
% Steward Qie 
% All rights reserved

%% Part A: Basic Operations with Matrices
%Define the matrix 
A=[10 16 4;19 -7 6;10 2 5];
B=[20 -20 20;3 11 2;8 2 9];

% Basic operations
fprintf('Matrix A: \n');
disp(A)
fprintf('Matrix B: \n');
disp(B)

fprintf('Row 2 in matrix A: \n');
disp(A(2,:))

fprintf('Column 1 in matrix B: \n');
disp(B(:,1))

fprintf('Sum of matrix A: \n');
disp(sum(A))

fprintf('Adding matrices A and B: \n');
disp(A+B)

fprintf('Array multiplication of A and B: \n');
disp(A.*B)

fprintf('Matrix multiplication of A and B: \n');
disp(A*B)

fprintf('Matrix multiplication of B and A: \n');
disp(B*A)

%% Part B: Grade Calculator
% Get input marks from command line
assign(1)=input('Assignment #1: ');
assign(2)=input('Assignment #2: ');
assign(3)=input('Assignment #3: ');
assign(4)=input('Assignment #4: ');
assign(5)=input('Assignment #5: ');
assign(6)=input('Assignment #6: ');
quiz(1)=input('Quiz #1: ');
quiz(2)=input('Quiz #2: ');
quiz(3)=input('Quiz #3: ');
quiz(4)=input('Quiz #4: ');
quiz(5)=input('Quiz #5: ');
final=input('Final Exam: ');

% Judge the mark is correct or not
if any(assign>100)||any(assign<0)||any(final>100)||any(final<0)||any(quiz>100)||any(quiz<0)
    if any(assign>100)||any(assign<0)
        error('Wrong mark in Assignment');
    else if any(final>100)||any(final<0)
        error('Wrong mark in Final');
    else if any(quiz>100)||any(quiz<0)
        error('Wrong mark in Quiz');
        end
        end
    end
end

% Calculate and output the mark
ma=sum(assign(:))/length(assign)*0.6+sum(quiz(:))/length(quiz)*0.1+sum(final(:))/length(final)*0.3;
fprintf('Your calculated final mark for ENCMP100 is: \n');
disp(ma)

mb=mean(assign)*0.6+mean(quiz)*0.1+mean(final)*0.3;
fprintf('Your calculated final mark for ENCMP100 is: \n');
disp(mb)
