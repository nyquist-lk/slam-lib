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

struct QuadraticCostFunction
    : public SizedCostFunction<1, 1>
{
public:
    virtual ~QuadraticCostFunction() {}

    virtual bool Evaluate(double const* const* parameters,
                            double* residuals,
                            double** jacobians) const
    {
        double x = parameters[0][0];
        residuals[0] = 10 - x;

        if (jacobians != NULL && jacobians[0] != NULL)
        {
            jacobians[0][0] = -1;
        }

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
        new QuadraticCostFunction;
    problem.AddResidualBlock(cost_function, NULL, &x);

    Solver::Options options;
    options.minimizer_progress_to_stdout = true;
    Solver::Summary summary;
    Solve(options, &problem, &summary);

    std::cout << summary.BriefReport() << std::endl;
    std::cout << "x: " << initial_x << "->" << x << std::endl;
    return 0;
}