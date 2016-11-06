//contrctor
TreeNodes::TreeNodes()
{
    NewBranch1 = NULL;
    NewBranch2 = NULL;

    m_NodeID = 0;
}

//deconstructor
TreeNodes::~TreeNodes()
{ }

//Step 3! Also step 7 hah!
TreeNodes::TreeNodes(int nodeID/*, string NQA*/)
{
    //create tree node with a specific node ID
    m_NodeID = nodeID;

    //reset nodes/make sure! that they are null. I wont have any funny business #s -_-
    NewBranch1 = NULL;
    NewBranch2 = NULL;
}
