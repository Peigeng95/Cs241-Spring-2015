#include <iostream>

using namespace std;

void traverse(istream &in){
   int node, child;
   in >> node >> child;
   if(cin.eof()){
		return;
	}
	else{
   	if(child != 0){
      	for(int i = 0; i < child; i++){
         	traverse(in);
      	}
      	cout << node << " " << child << endl;
      	return;
   	}
   	else{
      	cout << node << " " << child << endl;
      	return;
   	}
	}
}

int main(void) {
   traverse(cin);
}
