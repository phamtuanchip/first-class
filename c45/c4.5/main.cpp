#include <cstdlib>
#include <iostream>

using namespace std;


int main()
{
    
    
    //create the new decision tree object
    DecisionTree* NewTree = new DecisionTree();

    //add root node   the very first 'Question' or decision to be made
    //is monster health greater than player health?
    NewTree->CreateRootNode(1);

    //add nodes depending on decisions
    //2nd decision to be made
    //is monster strength greater than player strength?
    NewTree->AddNode1(1, 2);

    //3rd decision
    //is the monster closer than home base?
    NewTree->AddNode2(1, 3);

    //depending on the weights of all three decisions, will return certain node result
    //results!
    //Run, Attack, 
    NewTree->AddNode1(2, 4);
    NewTree->AddNode2(2, 5);
    NewTree->AddNode1(3, 6);
    NewTree->AddNode2(3, 7);

    //Others: Run to Base ++ Strength, Surrender Monster/Player, 
    //needs to be made recursive, that way when strength++ it affects decisions second time around DT

    //display information after creating all the nodes
    //display the entire tree, i want to make it look like the actual diagram!
    NewTree->Output();

    //ask/answer question decision making process
    NewTree->Query();

    cout << "Decision Made. Press Any Key To Quit." << endl;

    //pause quit, oh wait how did you do that again...look it up and put here

    //release memory!
    delete NewTree;

    //return random value
    //return 1;
     
}
