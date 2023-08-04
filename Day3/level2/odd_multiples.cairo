use debug::PrintTrait;

fn print_odd_multiples(n: u32, m: u32) {
    let mut numbers = n;
    let mut check = 0;
    let mut count = 0;
    loop{
        check = count * m;
        if numbers == 0{
            break;
        }
        if count % 2 == 0 {
            numbers = numbers - 1;
            count += 1;
            continue;
        }
        check.print();
        numbers = numbers - 1;
        count += 1;
    }
} 

fn main(){
    print_odd_multiples(20,5);
}