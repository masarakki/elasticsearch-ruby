# Licensed to Elasticsearch B.V under one or more agreements.
# Elasticsearch B.V licenses this file to you under the Apache 2.0 License.
# See the LICENSE file in the project root for more information

require_relative '../benchmarks'

Benchmarks.register \
  action: 'ping',
  category: 'core',
  warmups: 0,
  repetitions: 1000,
  block: Proc.new { |n, runner|
    runner.runner_client.ping
  }
