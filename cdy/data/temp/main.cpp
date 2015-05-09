#include <iostream>

using namespace std;

int main()
{
	int num = 23;

	int i;
	for (i = 0;i != num;i ++)
	{
		cout << 't' << i +1 << ", ";
	}

	cout << endl;

	int count = 0;
	long double temp = 0;

	while (cin >> temp)
	{
		count ++;

		cout << temp << "," << " ";

		if (count == num)
		{
			count = 0;
			cout << endl;
		}
	}


	return 0;
}
