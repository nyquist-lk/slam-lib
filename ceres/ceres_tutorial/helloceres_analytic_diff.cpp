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

struct Rat43Analytic
    : public SizedCostFunction<1, 4>
{
public:
    Rat43Analytic(const double x, const double y) : x_(x), y_(y) {}
    virtual ~Rat43Analytic() {}

    virtual bool Evaluate(double const* const* parameters,
                            double* residuals,
                            double** jacobians) const
    {
        const double b1 = parameters[0][0];
        const double b2 = parameters[0][1];
        const double b3 = parameters[0][2];
        const double b4 = parameters[0][3];

        // 增加子表达式缓存提高效率
        const double t1 = exp(b2 -  b3 * x_);
        const double t2 = 1 + t1;
        const double t3 = pow(t2, -1.0 / b4);
        residuals[0] = b1 * t3 - y_;

        if (!jacobians) return true;
        double* jacobian = jacobians[0];
        if (!jacobian) return true;

        const double t4 = pow(t2, -1.0 / b4 - 1);
        jacobian[0] = t3;
        jacobian[1] = -b1 * t1 * t4 / b4;
        jacobian[2] = -x_ * jacobian[1];
        jacobian[3] = b1 * log(t2) * t3 / (b4 * b4);

        return true;
    }

private:
    const double x_;
    const double y_;
};

int main(int argc, char const *argv[])
{
    google::InitGoogleLogging(argv[0]);

    double initial_x = 5.0;
    double x = initial_x;

    Problem problem;

    CostFunction* cost_function = 
        new Rat43Analytic;
    problem.AddResidualBlock(cost_function, NULL, &x);

    Solver::Options options;
    options.minimizer_progress_to_stdout = true;
    Solver::Summary summary;
    Solve(options, &problem, &summary);

    std::cout << summary.BriefReport() << std::endl;
    std::cout << "x: " << initial_x << "->" << x << std::endl;
    return 0;
}