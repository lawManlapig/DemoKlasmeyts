using klasmeyts.srv.KlasmeytsService as service from '../../srv/services';

//Main Entity
annotate service.Klasmeyts with @(
    UI.FieldGroup #MainDetails: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'First Name',
                Value: firstname,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Last Name',
                Value: lastname,
            },
        ],
    },
    UI.Facets                 : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'MainDetails',
            Label : 'Main Details',
            Target: '@UI.FieldGroup#MainDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'SkillDetails',
            Label : 'Skills ni Klasmeyt',
            //Target nito ay base sa Field name nung association sa Schema :)
            //kaya ang construction niya ay: <fieldname>/<type#name nung type>
            Target: 'skillset/@UI.LineItem#Skills',
        },
    ],
    UI.LineItem               : [
        {
            $Type: 'UI.DataField',
            Label: 'First Name',
            Value: firstname,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Last Name',
            Value: lastname,
        },
    ],
);

//Child Entity
annotate service.Skills with @(UI: {
    Identification         : [{Value: ID}],
    Facets                 : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'MainDetails',
        Label : 'Main Details',
        Target: '@UI.FieldGroup#MainDetails',
    }, ],
    FieldGroup #MainDetails: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Skill',
                Value: skillname,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Skill Level',
                Value: skilllevel,
            },
        ],
    },
    LineItem #Skills       : [
        {
            $Type: 'UI.DataField',
            Label: 'Skill',
            Value: skillname,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Skill Level',
            Value: skilllevel,
        },
    ],
});
