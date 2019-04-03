indices = find(~cellfun(@isempty,regexp({EEG.event.type},'regexp_of_choice_here*')));
EEG_new = pop_epoch(EEG, {}, epochlen ,'eventindices', indices, 'epochinfo', 'yes'); 
