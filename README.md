# Experiment base model 

Base model for LIP dataset training

## datasets, model file structure

```
m2fp/
  datasets/
    lip/             
    cihp/
    ..../ 
  models/
    base/
    exp1/
    exp2/
    .../
```
## default parameters for LIP dataset training

```
  CHECKPOINT_PERIOD: 2000
  EVAL_PERIOD: 2000
  IMS_PER_BATCH: 16
  BASE_LR: 0.0002
  MAX_ITER: 288000 # ~ 150 epoch
```
