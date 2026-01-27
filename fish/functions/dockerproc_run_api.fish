function dockerproc_run_api --wraps='dockerproc run --service-ports api' --description 'alias dockerproc_run_api=dockerproc run --service-ports api'
    dockerproc run --service-ports api $argv
end
