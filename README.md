# Vapor Clean

This is a template for Vapor 3 users that does the absolute minimum to set up a working Vapor 3 environment.

Unlike the official templates that are currently available, this template does not include vast swathes of extra example code that you will always need to delete. Instead, it adds just a single “hello” route so you can be sure everything is working correctly.

Although this repository contains a LICENSE file, this is meant for you to replace with whatever license you intend to use – please consider what little code is in this repository as public domain, and yours to do with as you please.

It’s my hope that the official Vapor project will add a template similar to this one at some point in the future, but until then please use this however you want.

## Try it out

If you have already installed the Vapor toolbox, you can create a new Vapor project from this repo using the following command:

    vapor new MyProject --template=twostraws/vapor-clean


## Project Description

An HTTP Service which accepts a graph of people where egdes represent friendship relationships. It returns the suggested eges which would create direct friend relationships between two people who currently are at most one friend away - two people who are friends "Friend of a Friend."

## Project Instruction

Recieve as input an array of friend relationships.
Return a set of arrays each representing a new suggested friend relationship. 

Example input:

    {"inList": [
        {"friends": ["Albert", "Betty"]},
        {"friends": ["Betty", "Cathy"]},
        {"friends": ["Cathy", "Dennis"]},
        {"friends": ["Dennis", "Albert"]},
        {"friends": ["Tony", "Bruce"]}
        ]}
        
 Example Output:
 
    {"outList": [["Albert", :Cathy"], ["Betty", "Dennis"]]}
    
    
    
