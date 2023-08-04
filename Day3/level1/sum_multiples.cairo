use debug::PrintTrait;

fn sum_multiples(n: u32, m: u32) -> u32{
    let mut counter = 0;
    let mut sum: u32 = 0;
    let mut check = 0;
    let result = loop {
        check = counter * m;
        if (check > n) {
            break sum;
        }
            sum += check;
            counter += 1;   
    };
    result
}

fn main() {
    let summation = sum_multiples(20, 4);
    summation.print();
}
