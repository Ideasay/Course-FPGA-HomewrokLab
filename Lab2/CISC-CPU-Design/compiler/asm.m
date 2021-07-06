%modified by luk
clear;
clc
%''内填入汇编文件名
filename='demo.asm';
code=cell(0);
flag_matrix=cell(0);
add_matrix1=cell(0);
add_matrix2=cell(0);


%读入网表文件,fid为文件指针
fid=fopen(filename,'r');
LN=1;
flag_num=0;
while(1)
    line=lower(fgetl(fid));     %开始读入汇编程序，且转换为小写 
    if regexpi(line,'\end')    %以"end"开头说明网表已经结束
        break;
    end
    if regexpi(line,'\w+')      %判断此行是否有以a-z或者A-Z或者0-9开头的字符
        i=1;
        while line(i)==' '%找到第一个非空格的字符
        i=i+1; 
        end
        j=i;
        while line(j)~=' '
            j=j+1;
            if j==length(line)
                j=j+1;
                break;
            end
        end
        k=j;
        asm_type=line(i:j-1);
        if line(j-1)==':'
            flag_num=flag_num+1;
            flag_matrix(flag_num)={line(i:j-2)};
            add_matrix1(flag_num)={dec2hex(floor((LN-1)/256))};
            add_matrix2(flag_num)={dec2hex(mod((LN-1),256))};
            
        i=j;
        while line(i)==' '
        i=i+1; 
        end
        j=i;
        while line(j)~=' '
            j=j+1;
            if j==length(line)
                j=j+1;
                break;
            end
        end
        k=j;
        asm_type=line(i:j-1);  
        end
        
        
        switch asm_type
            case 'ldi'
                while line(k)==' '
                k=k+1; 
                end
                l=k;
                while line(l)~=','
                l=l+1;
                end

                asm_type1=line(k:l-1);
                switch asm_type1
                    case 'acc'
                        code(LN)={'87'};
                        LN=LN+1;
                        code(LN)={line(l+2:l+3)};
                        LN=LN+1;
                    otherwise
                end
            case 'ldacc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'AX'
                        code(LN)={'89'};
                        LN=LN+1;
                     case 'AX'
                        code(LN)={'8A'};
                        LN=LN+1;
                    otherwise
                end
                
            case 'stacc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'95'};
                        LN=LN+1;
                    otherwise
                end
              case 'LDM'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'65'};
                        LN=LN+1;
                    case 'acc'
                        code(LN)={'60'};
                        LN=LN+1;
                    case 'AX'
                        code(LN)={'61'};
                        LN=LN+1;
                     case 'BX'
                        code(LN)={'62'};
                        LN=LN+1;
                     case 'FLAGS'
                        code(LN)={'64'};
                        LN=LN+1;
                    otherwise
                end
              case 'STM'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'6D'};
                        LN=LN+1;
                    case 'acc'
                        code(LN)={'68'};
                        LN=LN+1;
                    case 'AX'
                        code(LN)={'69'};
                        LN=LN+1;
                     case 'BX'
                        code(LN)={'6A'};
                        LN=LN+1;
                     case 'FLAGS'
                        code(LN)={'6C'};
                        LN=LN+1;
                    otherwise
                end
             case 'push'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'acc'
                        code(LN)={'70'};
                        LN=LN+1;
                    otherwise
                end               
             case 'pop'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'acc'
                        code(LN)={'78'};
                        LN=LN+1;
                    otherwise
                end
            case 'addacci'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'07'};
                LN=LN+1;                
                code(LN)={line(k+1:k+2)};
                LN=LN+1; 
              case 'addacc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'05'};
                        LN=LN+1;
                    case 'AX'
                        code(LN)={'01'};
                        LN=LN+1;
                    case 'BX'
                        code(LN)={'02'};
                        LN=LN+1;
                    case 'FLAGS'
                        code(LN)={'04'};
                        LN=LN+1;
                    otherwise
                     code(LN)={line(k+1:k+2)};
                
                end
             case 'subacci'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'0f'};
                LN=LN+1;                
                code(LN)={line(k+1:k+2)};
                LN=LN+1; 
              case 'subacc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'0d'};
                        LN=LN+1;
                    case 'AX'
                        code(LN)={'09'};
                        LN=LN+1;
                    case 'BX'
                        code(LN)={'0a'};
                        LN=LN+1;
                    case 'FLAGS'
                        code(LN)={'0c'};
                        LN=LN+1;
                    otherwise
                     code(LN)={line(k+1:k+2)};
                
                end
              case 'andacci'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'17'};
                LN=LN+1;                
                code(LN)={line(k+1:k+2)};
                LN=LN+1;
             case 'andacc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'15'};
                        LN=LN+1;
                    case 'AX'
                        code(LN)={'11'};
                        LN=LN+1;
                    case 'BX'
                        code(LN)={'12'};
                        LN=LN+1;
                    case 'FLAGS'
                        code(LN)={'14'};
                        LN=LN+1;
                    otherwise
                end
             case 'oracci'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'1F'};
                LN=LN+1;                
                code(LN)={line(k+1:k+2)};
                LN=LN+1;
              case 'oracc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'1d'};
                        LN=LN+1;
                    case 'AX'
                        code(LN)={'19'};
                        LN=LN+1;
                    case 'BX'
                        code(LN)={'1a'};
                        LN=LN+1;
                    case 'FLAGS'
                        code(LN)={'ic'};
                        LN=LN+1;
                    otherwise
                code(LN)={line(k+1:k+2)};
                LN=LN+1; 
                end
             case 'xoracci'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'27'};
                LN=LN+1;                
                code(LN)={line(k+1:k+2)};
                LN=LN+1;
                case 'xoracc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'24'};
                        LN=LN+1;
                    case 'AX'
                        code(LN)={'21'};
                        LN=LN+1;
                    case 'BX'
                        code(LN)={'22'};
                        LN=LN+1;
                    case 'FLAGS'
                        code(LN)={'23'};
                        LN=LN+1;
                    otherwise
                code(LN)={line(k+1:k+2)};
                LN=LN+1; 
                end
             case 'cmpacci'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'47'};
                LN=LN+1; 
                code(LN)={line(k+1:k+2)};
                LN=LN+1; 
            case 'cmpacc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);   
                switch asm_type1
                    case 'port'
                        code(LN)={'45'};
                        LN=LN+1;
                    case 'AX'
                        code(LN)={'41'};
                        LN=LN+1;
                    case 'BX'
                        code(LN)={'42'};
                        LN=LN+1;
                    case 'FLAGS'
                        code(LN)={'44'};
                        LN=LN+1;
                    otherwise
                code(LN)={line(k+1:k+2)};
                LN=LN+1; 
                end
            case 'ret'
                code(LN)={'de'};
                LN=LN+1;
            case 'call'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);                
                code(LN)={'d6'};
                LN=LN+1; 
                code(LN)={asm_type1};
                LN=LN+2;
            case 'jmp'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);                
                code(LN)={'c8'};
                LN=LN+1; 
                code(LN)={asm_type1};
                LN=LN+2;            
            case 'jne'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);                
                code(LN)={'a0'};
                LN=LN+1; 
                code(LN)={asm_type1};
                LN=LN+2; 
            case 'je'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);                
                code(LN)={'98'};
                LN=LN+1; 
                code(LN)={asm_type1};
                LN=LN+2; 
            case 'jp'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);                
                code(LN)={'A8'};
                LN=LN+1; 
                code(LN)={asm_type1};
                LN=LN+2;
            case 'jn'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);                
                code(LN)={'b0'};
                LN=LN+1; 
                code(LN)={asm_type1};
                LN=LN+2; 
            case 'jc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);                
                code(LN)={'b8'};
                LN=LN+1; 
                code(LN)={asm_type1};
                LN=LN+2; 
                
            case 'jnc'
                while line(k)==' '
                k=k+1; 
                end
                l=length(line);
                asm_type1=line(k:l);                
                code(LN)={'c0'};
                LN=LN+1; 
                code(LN)={asm_type1};
                LN=LN+2;
            case 'notacc'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'28'};
                LN=LN+1;                
                code(LN)={line(k+1:k+2)};
                LN=LN+1;
             case 'shracc'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'30'};
                LN=LN+1;                
                code(LN)={line(k+1:k+2)};
                LN=LN+1;
            case 'shlacc'
                while line(k)==' '
                k=k+1; 
                end
                code(LN)={'38'};
                LN=LN+1;                
                code(LN)={line(k+1:k+2)};
                LN=LN+1;
          
            otherwise
        
        
            
        end
    end
    
end
for mn=1:(LN-1)
    for lk=1:flag_num
        if strcmp(flag_matrix{lk},code{mn})
            code(mn)={add_matrix2(lk)};
            code(mn+1)={add_matrix1(lk)};
        end
    end
end
code=code';
save code.mat code;
