use debug::PrintTrait;
use traits::TryInto;
use option::OptionTrait;

fn calculate_power(base: u32, exponent: u32) -> u32 {
    if exponent == 0 {
        1
    } else {
        base * calculate_power(base, exponent - 1);
    }
} 

fn main() {
    let result : u32 = calculate_power(2,2);
    result.print();
}