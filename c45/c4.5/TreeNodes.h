using namespace std;
//tree node class
class TreeNodes
{
public:
    //tree node functions
    TreeNodes(int nodeID/*, string QA*/);
    TreeNodes();

    virtual ~TreeNodes();

    int m_NodeID;

    TreeNodes* NewBranch1;
    TreeNodes* NewBranch2;
};
