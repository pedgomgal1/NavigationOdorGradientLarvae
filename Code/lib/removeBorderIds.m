function [tableSummaryFeaturesRaw,xFile,yFile,speedFile,dataSpine,cellOutlinesLarvae,castFile]=removeBorderIds(borderIds,tableSummaryFeaturesRaw,xFile,yFile,speedFile,dataSpine,cellOutlinesLarvae,castFile)

    idsBoder2remove = tableSummaryFeaturesRaw.id(borderIds);
    tableSummaryFeaturesRaw(borderIds,:) = [];

    xFile(ismember(xFile(:,1),idsBoder2remove),:)=[];
    yFile(ismember(yFile(:,1),idsBoder2remove),:)=[];
    speedFile(ismember(speedFile(:,1),idsBoder2remove),:)=[];
    if ~isempty(cellOutlinesLarvae)
        castFile(ismember(castFile(:,1),idsBoder2remove),:)=[];
        dataSpine(ismember(dataSpine(:,1),idsBoder2remove),:)=[];
        cellOutlinesLarvae(ismember(vertcat(cellOutlinesLarvae{:,1}),idsBoder2remove),:)=[];
    end

end