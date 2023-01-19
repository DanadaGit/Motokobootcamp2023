1 True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.

False. The Internet Computer does not have a unique public key that can be used to verify responses coming from any subnets. Each subnet has its own unique public key that can be used to verify responses coming from that subnet.

2 True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.

False. The boundary node will always participate in both update and query calls.

3 True or False: I can create a certified variable that will certify the response of the following actor:

// actor {
//   public func hello(name : Text) : async Text {
//       return ("hello # name");
//   };
// }

False. Certified variables cannot directly certify the response of an actor. 
They can only certify the result of an action performed by an actor.