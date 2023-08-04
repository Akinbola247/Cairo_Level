use debug::PrintTrait;
use traits::TryInto;
use option::OptionTrait;

fn calculate_Power(base: felt252, mut exp: u32) -> felt252 {
    if exp == 0 {
        1
    } else {
        base * calculate_Power(base, exp - 1)
    }
}

fn main(){
   let result : u128 = calculate_Power(2,2).try_into().unwrap();
   result.print();
}
