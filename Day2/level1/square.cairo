use debug::PrintTrait;

fn square(num : u128) -> u128 {
     num * num
}


fn main(){
   let result = square(2);
   result.print();
}
