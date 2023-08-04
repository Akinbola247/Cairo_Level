use debug::PrintTrait;

fn find_primes(n: u128) {
    let mut prime_number = n;
    loop{
        if prime_number == 0 {
            break;
        }
        if prime_number == 1 {
            prime_number = prime_number - 1;
            continue;
        }
        if prime_number == 2 {
            prime_number.print();
            prime_number = prime_number - 1;
            continue;
        }
        if prime_number % 2 == 0 {
            prime_number = prime_number - 1;
            continue;
        }
        prime_number.print();
        prime_number = prime_number - 1;
    }

}


fn main(){
   find_primes(20); 
}