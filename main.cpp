#include <iostream>
#include <vector>
#include <cmath>
#include <algorithm>
#include <iomanip>
#include <ctime>
#include <chrono>
using namespace std;

class Point {
private:
public:
    int x;
    int y;
    Point(int x, int y){
        this->x = x;
        this->y = y;
    }
    friend bool operator< (const Point &point1, const Point &point2)
    {
        if(point1.x == point2.x){
            return point1.y < point2.y;
        } else{
            return point1.x < point2.x;
        }
    }
};

double dist(Point a, Point b){
    return sqrt(pow(b.x-a.x,2) + pow(b.y-a.y,2));
}

int main() {
    srand(time(NULL));
    double distance = 0.0;
    int n;
//    n = 12; //change n here
    cin >> n; //
    vector<Point> inputs;
    vector<Point> outputs;
    for(int i=0; i<n; i++){
        int x, y;
        cin >> x >> y; //
//        x = rand()%10000000;
//        y = rand()%10000000;
        Point point = Point(x,y);
        inputs.push_back(point);
    }
    vector<Point> input = inputs; //saving a copy of the input for the second part
    outputs.push_back(inputs[0]);
    inputs.erase(inputs.begin());
    cout.precision(10); //sets precision of the digits

    //Part 1
    int runs1 = 3;
    auto time1 = chrono::high_resolution_clock::now();
    for(int j=0; j<runs1; j++) {
        while (inputs.size() > 0) {
            Point closestPoint = inputs[0];
            int closestIndex = 0;
            double minDistance = dist(outputs.back(), inputs[0]);
            for (int i = 0; i < inputs.size(); i++) {
                double d = dist(outputs.back(), inputs[i]);
                if (d < minDistance) {
                    minDistance = d;
                    closestPoint = inputs[i];
                    closestIndex = i;
                }
            }
            outputs.push_back(inputs[closestIndex]);
            inputs.erase(inputs.begin() + closestIndex);
            distance += minDistance;
        }
        distance += dist(outputs[0], outputs.back());
        outputs.push_back(outputs[0]);
        cout << distance << endl;
        for(int i=0; i<outputs.size(); i++){
            cout << outputs[i].x << " " << outputs[i].y << endl;
        }
    }
    auto duration1 = chrono::duration_cast<chrono::nanoseconds>(chrono::high_resolution_clock::now() - time1).count() / runs1;
    cout << "Average Time for Part 1: " << duration1 << " nanoseconds (" << duration1/1000000000.0 << " seconds)" << endl;

    cout << endl;

    // Part 2
    int runs2 = 3;
    auto time2 = chrono::high_resolution_clock::now();
    for(int j=0; j<runs2; j++) {
        double shortestPath = INT_MAX;
        vector<Point> output = input;
        output.push_back(input[0]);
        std::sort(input.begin(), input.end());
        do {
            double currentDist = 0;
            for (int i = 0; i < input.size(); i++) {
                currentDist += dist(input[i], input[(i + 1) % input.size()]);
            }
            if (currentDist < shortestPath) {
                shortestPath = currentDist;
                output = input;
                output.push_back(input[0]);
            }
        } while (next_permutation(input.begin(), input.end()));
        cout << shortestPath << endl;
        for (int i = 0; i < output.size(); i++) {
            cout << output[i].x << " " << output[i].y << endl;
        }
    }
    auto duration2 = chrono::duration_cast<chrono::nanoseconds>(chrono::high_resolution_clock::now() - time2).count() / runs2;
    cout << "Average Time for Part 2: " << duration2 << " nanoseconds (" << duration2/1000000000.0 << " seconds)" << endl;
    return 0;
}