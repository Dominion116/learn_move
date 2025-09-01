module hello_world::hello_world {
    

    use std::string::String;
    use sui::object:: UID;
    use sui::transfer;
    use sui::tx_context::TxContext;

    public struct HelloWorldObject has key {
        id: UID,
        text: String
    }

    public entry fun mint (ctx: &mut TxContext) {
        let object = HelloWorldObject{
            id: UID : object::new(ctx),
            text: String : string::utf8(b"Hello World")
        };
        transfer::transfer(obj:object, recipient:tx_context::sender::(self: ctx));
    }
}


