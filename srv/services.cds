namespace klasmeyts.srv;

//ngayon, need mo ireference yung Scheme mo, so gagamitan natin ng 'using'
using klasmeyts.db as schema from '../db/schema';

service KlasmeytsService { //Naming convention: Same sa Entities pero may 'Service' sa dulo
    entity Klasmeyts as projection on schema.Klasmeyts;
    entity Skills    as projection on schema.Skills;
}
