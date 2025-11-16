function add_parent_restriction_to_chain_connection(chain, from_object, to_object, parent_restriction)
parent_restriction_enumeration = "eChParentPlatformRestriction" + parent_restriction; 
chain.Connections.ItemByFromToObjects(from_object, to_object).ParentPlatformRestriction = parent_restriction_enumeration;
end