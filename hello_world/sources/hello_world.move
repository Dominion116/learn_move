module hello_world::hello_world {
    

    use std::string;

    // public struct HelloWorldObject has key, store {
    //     id: UID,
    //     text: string::String
    // }

    // public entry fun mint (ctx: &mut TxContext) {
    //     let object = HelloWorldObject{
    //         id: object::new(ctx),
    //         text: string::utf8(b"Hello World")
    //     };
    //     transfer::public_transfer(object, tx_context::sender(ctx));
    // }

    public fun hello() : string::String{
        string::utf8(b"Hello there!")
    }
}


