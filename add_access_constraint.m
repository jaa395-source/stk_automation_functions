function [access_constraint] = add_access_constraint(constrained_object,constraint_type)
constraint_enumeration = strcat("eCstr", string(constraint_type));
if constrained_object.AccessConstraints.IsConstraintActive(constraint_enumeration)
    access_constraint = constrained_object.AccessConstraints.GetActiveConstraint(constraint_enumeration);
else
    access_constraint = constrained_object.AccessConstraints.AddConstraint(constraint_enumeration);
end
end