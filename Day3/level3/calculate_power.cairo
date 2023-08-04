use debug::PrintTrait;
use traits::TryInto;
use option::OptionTrait;


fn calculate_Power(base: u32, mut exp: u32) -> u32 {
    if exp == 0 {
        1
    } else {
        base * calculate_Power(base, exp - 1)
    }
}

fn main(){
   let result = calculate_Power(2,2);
   result.print();
}
