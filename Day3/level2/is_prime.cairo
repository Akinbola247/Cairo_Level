use debug::PrintTrait;

fn is_prime(n: u128){
   loop {
         if n == 2 {
            'true'.print();
            break;
         }
         if n % 2 == 0 {
            'false'.print();
            break;
         }
          'true'.print();
   } 
}

fn main(){
    is_prime(7);
}