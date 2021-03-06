int random(int upperLimit);

//for random variables that will effect decisions/node values/weights
int random(int upperLimit)
{
    int randNum = rand() % upperLimit;
    return randNum;
}

//constructor
//Step 1!
DecisionTree::DecisionTree()
{
    //set root node to null on tree creation
    //beginning of tree creation
    m_RootNode = NULL;
}

//destructor
//Final Step in a sense
DecisionTree::~DecisionTree()
{
    RemoveNode(m_RootNode);
}

//Step 2!
void DecisionTree::CreateRootNode(int NodeID)
{
    //create root node with specific ID
    // In MO, you may want to use thestatic creation of IDs like with entities. depends on how many nodes you plan to have
    //or have instantaneously created nodes/changing nodes
    m_RootNode = new TreeNodes(NodeID);
}

//Step 5.1!~
void DecisionTree::AddNode1(int ExistingNodeID, int NewNodeID)
{
    //check to make sure you have a root node. can't add another node without a root node
    if(m_RootNode == NULL)
    {
        cout << "ERROR - No Root Node";
        return;
    }

    if(SearchAddNode1(m_RootNode, ExistingNodeID, NewNodeID))
    {
        cout << "Added Node Type1 With ID " << NewNodeID << " onto Branch Level " << ExistingNodeID << endl;
    }
    else
    {
        //check
        cout << "Node: " << ExistingNodeID << " Not Found.";
    }
}

//Step 6.1!~ search and add new node to current node
bool DecisionTree::SearchAddNode1(TreeNodes *CurrentNode, int ExistingNodeID, int NewNodeID)
{
    //if there is a node
    if(CurrentNode->m_NodeID == ExistingNodeID)
    {
        //create the node
        if(CurrentNode->NewBranch1 == NULL)
        {
            CurrentNode->NewBranch1 = new TreeNodes(NewNodeID);
        }
        else 
        {
            CurrentNode->NewBranch1 = new TreeNodes(NewNodeID);
        }
        return true;
    }
    else
    {
        //try branch if it exists
        //for a third, add another one of these too!
        if(CurrentNode->NewBranch1 != NULL)
        {
            if(SearchAddNode1(CurrentNode->NewBranch1, ExistingNodeID, NewNodeID))
            {
                return true;
            }
            else
            {
                //try second branch if it exists
                if(CurrentNode->NewBranch2 != NULL)
                {
                    return(SearchAddNode2(CurrentNode->NewBranch2, ExistingNodeID, NewNodeID));
                }
                else
                {
                    return false;
                }
            }
        }
        return false;
    }
}

//Step 5.2!~    does same thing as node 1.  if you wanted to have more decisions, 
//create a node 3 which would be the same as this maybe with small differences
void DecisionTree::AddNode2(int ExistingNodeID, int NewNodeID)
{
    if(m_RootNode == NULL)
    {
        cout << "ERROR - No Root Node";
    }

    if(SearchAddNode2(m_RootNode, ExistingNodeID, NewNodeID))
    {
        cout << "Added Node Type2 With ID " << NewNodeID << " onto Branch Level " << ExistingNodeID << endl;
    }
    else
    {
        cout << "Node: " << ExistingNodeID << " Not Found.";
    }
}

//Step 6.2!~ search and add new node to current node
//as stated earlier, make one for 3rd node if there was meant to be one
bool DecisionTree::SearchAddNode2(TreeNodes *CurrentNode, int ExistingNodeID, int NewNodeID)
{
    if(CurrentNode->m_NodeID == ExistingNodeID)
    {
        //create the node
        if(CurrentNode->NewBranch2 == NULL)
        {
            CurrentNode->NewBranch2 = new TreeNodes(NewNodeID);
        }
        else 
        {
            CurrentNode->NewBranch2 = new TreeNodes(NewNodeID);
        }
        return true;
    }
    else
    {
        //try branch if it exists
        if(CurrentNode->NewBranch1 != NULL)
        {
            if(SearchAddNode2(CurrentNode->NewBranch1, ExistingNodeID, NewNodeID))
            {
                return true;
            }
            else
            {
                //try second branch if it exists
                if(CurrentNode->NewBranch2 != NULL)
                {
                    return(SearchAddNode2(CurrentNode->NewBranch2, ExistingNodeID, NewNodeID));
                }
                else
                {
                    return false;
                }
            }
        }
        return false;
    }
}

//Step 11
void DecisionTree::QueryTree(TreeNodes* CurrentNode)
{
    if(CurrentNode->NewBranch1 == NULL)
    {
        //if both branches are null, tree is at a decision outcome state
        if(CurrentNode->NewBranch2 == NULL)
        {
            //output decision 'question'
            ///////////////////////////////////////////////////////////////////////////////////////
        }
        else
        {
            cout << "Missing Branch 1";
        }
        return;
    }
    if(CurrentNode->NewBranch2 == NULL)
    {
        cout << "Missing Branch 2";
        return;
    }

    //otherwise test decisions at current node
    MakeDecision(CurrentNode);
}

//Step 10
void DecisionTree::Query()
{
    QueryTree(m_RootNode);
}

////////////////////////////////////////////////////////////
//debate decisions   create new function for decision logic

// cout << node->stringforquestion;

//Step 12
void DecisionTree::MakeDecision(TreeNodes *node)
{
    //should I declare variables here or inside of decisions.h
    int PHealth;
    int MHealth;
    int PStrength;
    int MStrength;
    int DistanceFBase;
    int DistanceFMonster;

    ////sets random!
    srand(time(NULL));

    //randomly create the numbers for health, strength and distance for each variable
    PHealth = random(60);
    MHealth = random(60);
    PStrength = random(50);
    MStrength = random(50);
    DistanceFBase = random(75);
    DistanceFMonster = random(75);

    //the decision to be made string example: Player health: Monster Health:  player health is lower/higher
    cout << "Player Health: " << PHealth << endl;
    cout << "Monster Health: " << MHealth << endl;
    cout << "Player Strength: " << PStrength << endl;
    cout << "Monster Strength: " << MStrength << endl;
    cout << "Distance Player is From Base: " << DistanceFBase << endl;
    cout << "Disntace Player is From Monster: " << DistanceFMonster << endl;

    //MH > PH
    //MH < PH
    //PS > MS
    //PS > MS
    //DB > DM
    //DB < DM

    //good place to break off into different decision nodes, not just 'binary'

    //if statement lower/higher query respective branch
    if(PHealth > MHealth)
    {
    }
    else
    {
    }
    //re-do question for next branch. Player strength: Monster strength: Player strength is lower/higher
    //if statement lower/higher query respective branch
    if(PStrength > MStrength)
    {
    }
    else
    {
    }

    //recursive question for next branch. Player distance from base/monster. 
    if(DistanceFBase > DistanceFMonster)
    {
    }
    else
    {
    }
    //DECISION WOULD BE MADE
    //if statement?
    // inside query output decision?
    //cout <<  << 

        //QueryTree(node->NewBranch2);

        //MakeDecision(node);
}

//Step.....8ish?
void DecisionTree::Output()
{
    //take repsective node
    DisplayTree(m_RootNode);
}

//Step 9
void DecisionTree::DisplayTree(TreeNodes* CurrentNode)
{
    //if it doesn't exist, don't display of course
    if(CurrentNode == NULL)
    {
        return;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////
    //need to make a string to display for each branch
    cout << "Node ID " << CurrentNode->m_NodeID << "Decision Display: " << endl;

    //go down branch 1
    DisplayTree(CurrentNode->NewBranch1);

    //go down branch 2
    DisplayTree(CurrentNode->NewBranch2);
}

//Final step at least in this case. A way to Delete node from tree. Can't think of a way to use it yet but i know it's needed
void DecisionTree::RemoveNode(TreeNodes *node)
{
    //could probably even make it to where you delete a specific node by using it's ID
    if(node != NULL)
    {
        if(node->NewBranch1 != NULL)
        {
            RemoveNode(node->NewBranch1);
        }

        if(node->NewBranch2 != NULL)
        {
            RemoveNode(node->NewBranch2);
        }

        cout << "Deleting Node" << node->m_NodeID << endl;

        //delete node from memory
        delete node;
        //reset node
        node = NULL;
    }
}
