#include <iostream>
#include <ceres/ceres.h>
#include <chrono>

using namespace std;
using namespace ceres;

using ceres::NumericDiffCostFunction;
using ceres::CENTRAL;
using ceres::CostFunction;
using ceres::Problem;
using ceres::Solver;
using ceres::Solve;

struct CostFunctor
{
    bool operator() (const double* const x, double* residual) const
    {
        residual[0] = 10.0 - x[0];
        return true;
    }
};

int main(int argc, char const *argv[])
{
    google::InitGoogleLogging(argv[0]);

    double initial_x = 5.0;
    double x = initial_x;

    Problem problem;

    CostFunction* cost_function = 
        new NumericDiffCostFunction<CostFunctor, CENTRAL, 1, 1>(new CostFunctor);
    problem.AddResidualBlock(cost_function, NULL, &x);

    Solver::Options options;
    options.minimizer_progress_to_stdout = true;
    Solver::Summary summary;
    Solve(options, &problem, &summary);

    std::cout << summary.BriefReport() << std::endl;
    std::cout << "x: " << initial_x << "->" << x << std::endl;
    return 0;
}