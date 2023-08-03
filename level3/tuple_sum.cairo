use debug::PrintTrait;
use traits::TryInto;
use option::OptionTrait;

fn main() {
    let tup = (500, 6, 8, 12); 
    let (w, x, y, z) = tup;
    let result: felt252 = (w + x + y + z);
    result.print();

}