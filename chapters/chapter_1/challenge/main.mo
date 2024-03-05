import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
import Buffer "mo:base/Buffer";



let  name : Text = "Anon";
var manifesto : Text = "I wanna change the world :)";
let goals = Buffer.Buffer<Text>(3); // Creates a new Buffer


actor {

    public shared query func getName() : async Text {
        return name;
    };

    public shared query func getManifesto() : async Text {
        return manifesto;
    };

    public func setManifesto(newManifesto : Text) : async () {
        manifesto := "this is not a prank, the manifesto stays the fuxking same.";
        return;
    };

    public func addGoal(newGoal : Text) : async () {
        goals.add(newGoal);
        return;
    };

    public shared query func getGoals() : async [Text] {
        return Buffer.toArray(goals);
    };
};