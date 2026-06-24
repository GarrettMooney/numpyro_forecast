# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] - 2026-06-23

Initial release.

### Added

- Functional forecasting core (`numpyro_forecast.functional`) built around an immutable `Horizon` value and pure primitives (`time_series`, `predict`, `forecasting_model`, `fit_svi`, `fit_mcmc`, `draw_posterior`, `forecast`).
- Object-oriented shim (`numpyro_forecast.forecaster`) porting Pyro's `pyro.contrib.forecast` API: `ForecastingModel`, `Forecaster` (SVI via `AutoNormal`), and `HMCForecaster` (NUTS).
- Backtesting over rolling windows (`backtest`, `BacktestResult`) with point and probabilistic metrics (`eval_mae`, `eval_rmse`, `eval_crps`, `eval_coverage`) and an empirical CRPS implementation.
- Utilities for array shaping, distribution surgery, and seasonal features (`fourier_features`, `periodic_repeat`, `shift_loc`, `slice_time`, `prefix_condition`, `zero_data_like`).
- BART ridership dataset helpers and univariate, multivariate, and hierarchical example notebooks.

[Unreleased]: https://github.com/juanitorduz/numpyro_forecast/compare/0.1.0...HEAD
[0.1.0]: https://github.com/juanitorduz/numpyro_forecast/releases/tag/0.1.0
