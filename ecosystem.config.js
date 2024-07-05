module.exports = {
  apps: [
    {
      name: 'nestjs-app',
      script: 'dist/main.js',
      instances: 'max', // CPU 코어 수에 맞게 인스턴스를 생성합니다.
      exec_mode: 'cluster', // 클러스터 모드로 실행합니다.
      env: {
        NODE_ENV: 'development',
      },
      env_production: {
        NODE_ENV: 'production',
      },
    },
  ],
};
