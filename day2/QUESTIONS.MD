Who controls the ledger canister?

I believe that since the Governance Canister is responsible for managing the rules of the NNS, and the rules govern how the 4 NNS canisters interact with each other. It is the Governance Canister which controls the Ledger canister... But ultimately all of the canisters, including the Ledger canister is controlled by the Governed... In other words.... The Voters of the NNS.


What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?

Using ICSCAN canister ID mwrha-maaaa-aaaab-qabqq-cai
does not appear to be currently assigned to a subnet.
But
 If we use this canister ID to calculate the subnet.
The subnet of this canister id  would be  0.1.0.0/16.
( mwrha-maaaa-aaaab-qabqq-cai ) 
It can be derived from its four - 16 bit numbers

 The first two numbers (mwrha and maaaa) 
 are the first two octets of the IP address
The last two number (aaaab and qabqq) 
are the last two octets of the IP address. 
 The subnet is then calculated by adding the two octets together, in this case 0.1.0.0/16.


I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

The expected voting power is 1/2 of the maximum voting power the neuron can have, since the neuron has been locked for 2 years out of the 4 year dissolve delay. Therefore, the expected voting power is 0.5O ICPs.


What is wrong with the following code?
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}

The issue with the above Motoko code is that the function "convert_to_text" is declared as an async function, but it does not have an await statement or return an async value. Async functions must wait for an asynchronous operation to finish before they can return a value. The function should be written

actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public async func convert_to_text(m : Nat) : Text {
    return await Nat.toText(m);
  };
}



What is wrong with the following code?
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}


The issue with the above Motoko code is that the function "show_languages" is declared as an async function, but it does not have an await statement or return an async value. Async functions must wait for an asynchronous operation to finish before they can return a value. Additionally, the function does not take any arguments and does not use the "language" argument it is given. The function should be written as follows: 

actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public async func show_languages() : [Text] {
    return await languages;
  };

}


What is wrong with the following code?
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}

The issue with the above Motoko code is that the function "add_language" is declared as an async function, but it does not have an await statement or return an async value. Async functions must wait for an asynchronous operation to finish before they can return a value. Additionally, the function does not assign the return value of the "Array.append" function to the "languages" variable, so the changes will not be made. The function should be written as follows: 

actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public async func add_language(new_language: Text) : [Text] {
    languages = await Array.append<Text>(languages, [new_language]);
    return await languages;
  };