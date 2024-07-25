//namespace: parang path mo yan papunta sa mga objects mo
//ikaw bahala sa naming niyan basta maayos haha
namespace klasmeyts.db;

//Reusables: as the name suggests, mga code na pwede mo ireuse to reduce effort in coding :)
//it can be anything: Aspects, Data Types, functions, atbp.
using {
    managed,
    cuid
} from '@sap/cds/common';

//-->Entities = Naming convention : Capital First Letter + Plural form
entity Klasmeyts : managed, cuid { //if you want to add a reusable, follow this format >> <entity> : <reusables>
    firstname : String; //Fields = Naming Convention : Small letters + Singular form
    lastname  : String;

    //Composition = Child entity niya ito.. this cannot exist pag wala yung parent
    skillset  : Composition of many Skills
                    on skillset.klasmeyt = $self; //pag $self gamit mo, automatic kukunin yung key fields as foreign key nung child

    //Association = Associated entity.. this can exist kahit wala yung parent
    boss      : Association to one Bosses
                    on boss.klasmeyt = $self;
};

//-->Child Entities
entity Skills : cuid {
    klasmeyt   : Association to Klasmeyts;
    skillname  : String;
    skilllevel : Integer;
};

entity Bosses : cuid {
    klasmeyt : Association to Klasmeyts;
    bossname : String;
};
