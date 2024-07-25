using klasmeyts.db as schema from '../db/schema';

//Isa sa mga paraan para mag annotate ng Entity :)
//pero pwede din rekta mo na duon ilagay sa Entity via '@'
annotate schema.Klasmeyts{
    //Ganito naman mag annotate ng field sa loob nung entity
    ID @(UI.Hidden)
};

annotate schema.Skills{
    ID @(UI.Hidden)
};
