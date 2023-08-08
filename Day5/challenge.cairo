use debug::PrintTrait; 
use dict::Felt252DictTrait;

fn grades() -> Felt252Dict<u64> {
    let mut student_grades: Felt252Dict<u64> = Default::default();
    student_grades.insert('Alex', 85);
    student_grades.insert('Maria', 92);
    student_grades.insert('John', 78);

    student_grades
}
fn get_student_grades(mut student_grades: Felt252Dict<u64>, grade_key: felt252) {
    let grade_result = student_grades.get(grade_key);
    grade_result.print();
}

fn add_product(mut _name: felt252, mut _quantity: u64){
    let mut dictionary_: Felt252Dict<u64> = Default::default();
    let existing_quantity =  dictionary_.get(_name);  
        if existing_quanity != 0 {
            dictionary_.insert(_name, _quantity + existing_quantity);
        }else {
            dictionary_.insert(_name, _quantity);
        }
}


fn main() {
    let result : Felt252Dict<u64> = grades();
    get_student_grades(result, 'Maria');
    add_product('Beans', 300);
}