use debug::PrintTrait;

fn print_odd_numbers(n: u128) {
    let mut numbers = n;
    loop {
        if numbers == 0 {
            break;
        }
        if numbers % 2 == 0{
           numbers = numbers - 1;
            continue;
        }
        numbers.print();
        numbers = numbers - 1;
    }
}


fn main(){
    print_odd_numbers(10);
}