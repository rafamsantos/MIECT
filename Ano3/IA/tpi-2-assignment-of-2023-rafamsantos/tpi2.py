#encoding: utf8

# YOUR NAME:Rafael Machado dos Santos
# YOUR NUMBER: 98466

# COLLEAGUES WITH WHOM YOU DISCUSSED THIS ASSIGNMENT:
# - ...
# - ...

from semantic_network import *
from bayes_net import *
from constraintsearch import *


class MySN(SemanticNetwork):

    def __init__(self):
        # ADD CODE HERE IF NEEDED
        SemanticNetwork.__init__(self)
     

    def is_object(self,user,obj):
        # IMPLEMENT HERE
        # check if the object obj is in user declarations
        
        for i in self.declarations: 
            if i.user == user and i.relation.entity1 == obj: 
                return True 
        return False 
        
    def is_type(self,user,type):
        # IMPLEMENT HERE
        # checks if type exists in user declarations
        for i in self.declarations:
            if i.user == user and i.relation.entity2 == type:
                return True 
        return False


    def infer_type(self,user,obj):#xptoval
        # infer the type of the object obj based on the user's declarations
        for d in self.declarations:
            if d.user == user and d.relation.entity1 == obj: #checks if the object is in the user declarations
                if isinstance(d.relation, Member) or isinstance(d.relation, Subtype): # infers the type of the object
                    return d.relation.entity2 # returns the type of the object
                # else if type cannot be inferred, returns "unknown"
                else: 
                    return "unknown"    
              
        return None # if the object is not in the user declarations, returns none

                
                


    def infer_signature(self,user,assoc):#xptoval
        # infer the signature of the association assoc based on the user's declarations
        # checks if assoc exists in self.associations
        pass


class MyBN(BayesNet):

    def __init__(self):
        BayesNet.__init__(self)
        # ADD CODE HERE IF NEEDED
        

    def markov_blanket(self,var):
        # IMPLEMENT HERE
        #pass
        #given a variable of the network, var, returns a list of the variables that make up the Markov blanket of that variable
        markov_blanket = [] # list of variables that make up the markov blanket of var
        
        for i in self.dependencies[var]:
            for j in i[0]:
                if j != []:
                    if j not in markov_blanket:
                # append the content of j in i[] to markov_blanket
                        markov_blanket.append(j)# gets the parent of var
            for k in i[1]:
                if k != []:
                    if k not in markov_blanket:
                        markov_blanket.append(k)
        #print(self.dependencies)

        for i in self.dependencies: # check all dependencies
            for j in self.dependencies[i]: # see values of all dependencies
                for k in j[0]:  # check true values of dependencies
                    if k == var: # if there is "son"
                        if i not in markov_blanket:
                            markov_blanket.append(i)
                            aux_var = i
                for k in j[1]:  # check false values of dependencies
                    if k == var: # if there is "son"
                        if i not in markov_blanket:
                            markov_blanket.append(i)
                            aux_var = i

        for i in self.dependencies[aux_var]:
            for j in i[0]: # check true values of dependencies
                if j != []:
                    if j != var:
                        if j not in markov_blanket:
                            markov_blanket.append(j)# gets the parent of var
            for k in i[1]:
                if k != []:
                    if k!= var:
                        if k not in markov_blanket:
                            markov_blanket.append(k)
        
                
        #return self.dependencies[var]
        return markov_blanket
          
 

class MyCS(ConstraintSearch):

    def __init__(self,domains,constraints):
        ConstraintSearch.__init__(self,domains,constraints)
        # ADD CODE HERE IF NEEDED
        self.domains=domains
        self.constraints=constraints
        self.aux_vars = set()



    def propagate(self,domains,var):
        pass


    def higherorder2binary(self,ho_c_vars,unary_c):
        # create a new auxiliary variable
        aux_var = len(self.domains)
        self.aux_vars.add(aux_var)

        # add the auxiliary variable to the domains dictionary
        self.domains[aux_var] = set(range(len(ho_c_vars)))

        # add binary constraints between the auxiliary variable and the variables in ho_c_vars
        for var in ho_c_vars: # for each variable in ho_c_vars
            self.constraints[aux_var, var] = unary_c # add the constraint to the constraints dictionary

        # update the higher order constrint variables domains
        for var in ho_c_vars:
            self.domains[var] = set(range(len(ho_c_vars)))
