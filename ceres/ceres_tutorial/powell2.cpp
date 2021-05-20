//
// Created by xiang on 18-11-19.
//

#include <iostream>
#include <ceres/ceres.h>
#include <chrono>

using ceres::AutoDiffCostFunction;
using ceres::CostFunction;
using ceres::Problem;
using ceres::Solver;
using ceres::Solve;

using namespace std;

// 代价函数的计算模型
struct AllF
{
	template<typename T>
	bool operator()(const T* const x, T* residual) const
	{
		residual[0] = x[0] + 10.0 * x[1];
		residual[1] = 5.0 * (x[2] - x[3]);
		residual[2] = (x[1] - 2.0 * x[2]) * (x[1] - 2.0 * x[2]);
		residual[3] = 10.0 * (x[0] - x[3]) * (x[0] - x[3]);

		return true;
	}
};

int main(int argc, char **argv) {
	google::InitGoogleLogging(argv[0]);

	double x[4];
	x[0] = 3.0;
	x[1] = -1.0;
	x[2] = 0.0;
	x[3] = 1.0;

	// 构建最小二乘问题
	ceres::Problem problem;
	problem.AddResidualBlock(     // 向问题中添加误差项
		// 使用自动求导，模板参数：误差类型，输出维度，输入维度，维数要与前面struct中一致
		new ceres::AutoDiffCostFunction<AllF, 4, 4>(new AllF),
		nullptr,            // 核函数，这里不使用，为空
		x                // 待估计参数
	);

	// 配置求解器
	ceres::Solver::Options options;     // 这里有很多配置项可以填
	options.linear_solver_type = ceres::DENSE_QR;  // 增量方程如何求解
	options.minimizer_progress_to_stdout = true;   // 输出到cout
	options.max_num_iterations = 100;

	ceres::Solver::Summary summary;                // 优化信息
	chrono::steady_clock::time_point t1 = chrono::steady_clock::now();
	ceres::Solve(options, &problem, &summary);  // 开始优化
	chrono::steady_clock::time_point t2 = chrono::steady_clock::now();
	chrono::duration<double> time_used = chrono::duration_cast<chrono::duration<double>>(t2 - t1);
	cout << "solve time cost = " << time_used.count() << " seconds. " << endl;

	// 输出结果
	cout << summary.BriefReport() << endl;
	cout << "estimated x[] = ";
	for (auto xi:x) cout << xi << " ";
	cout << endl;

	return 0;
}