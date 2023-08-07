use debug::PrintTrait;
use array::ArrayTrait;
use option::OptionTrait;
use box::BoxTrait;
use traits::Into;

fn createArray() {
    let mut arr = ArrayTrait::new();
    arr.append(10);
    arr.append(20);
    arr.append(30);
    arr.print();
}

#[derive(Copy, Drop)]
enum Data {
    Integer: u128,
    Felt: felt252,
    Tuple: (u32, u32),
}

fn DataArray() -> Data {
    let mut data_array: Array<Data> = ArrayTrait::new();
    data_array.append(Data::Integer(100));
    data_array.append(Data::Felt('hello'));
    data_array.append(Data::Tuple((10, 30)));

    match data_array.get(1) {
        Option::Some(x) => {
            *x.unbox()
        },
        Option::None(_) => {
             let mut data = ArrayTrait::new();
            data.append('out of bounds');
            panic(data)
        },
    }
}

fn main () {
    createArray();
    DataArray();
}