Dummy Repo to test out chefspec ServerRunner

`rspec spec/*_spec.rb --color`

```
F

Failures:

  1) blah::_test has 2 workers
     Failure/Error: expect(chef_run).to write_log('Num workers 2')
       expected "log[Num workers 2]" with action :write to be in Chef run. Other log resources:
       
         log[Num workers 1]
         log[worker2]
        
     # ./spec/blah_spec.rb:19:in `block (2 levels) in <top (required)>'

Finished in 0.49365 seconds (files took 18.77 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/blah_spec.rb:18 # blah::_test has 2 workers

```