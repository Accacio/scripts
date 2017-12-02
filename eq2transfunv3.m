clear 
clc
%syms a c d e f g h i j k l m n o p q r s t u v w x y z
%syms B C D E F G H I J K L M N O P Q R S T U V W X Y Z

save_system('teste', 'exported_file_name.xml', 'ExportToXML', true)
docNode=xmlread('exported_file_name.xml');

model=docNode.getDocumentElement;

entries=model.getChildNodes;
ModelInformation=entries.item(1).getChildNodes;

system=ModelInformation.getFirstChild;
clear ModelInformation entries docNode
while ~isempty(system)
    if strcmpi(system.getNodeName, 'System')
        break;
    else
        system = system.getNextSibling;
    end
end

i=1;
block=system.getFirstChild;
while ~isempty(block)
    if strcmpi(block.getNodeName, 'Block')
        eval(['blocks.block' num2str(i) '=block;' ])
        block
        i=i+1;
        block = block.getNextSibling;
    else
        block = block.getNextSibling;
    end
end

line=system.getFirstChild;
i=1;
while ~isempty(line)
    if strcmpi(line.getNodeName, 'Line')
        eval(['lines.line' num2str(i) '=line;' ])
        line
        i=i+1;
        line = line.getNextSibling;
    else
        line = line.getNextSibling;
    end
end



% equations=[];
% vars =[];
% testebloco=[];
% model= fileread('teste.mdl');
% modelpos=strfind(model,'System {');
% 
% System=model(modelpos:end-1);
% System2=mat2str(System);
% Line_init=strfind(System,'Line {');
% Line_end=strfind(System,'}');
% j=0;
% for i=Line_init
%     j=j+1;
%     eval(['Block_' num2str(j) '=2;']);
% end
% 
% 
% clear model;
% 
% [A,b]=equationsToMatrix(equations,vars);
% R=rref(A);
% Sol=-R(:,end)
