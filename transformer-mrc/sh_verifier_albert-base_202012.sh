# rear verification: merge the prediction for final answer (`run_verifier.py`)
export SQUAD_DIR=data/
export CLS_RES_DIR=squad/cls_squad2_albert-base-v2_lr2e-5_len512_bs48_ep2_wm814_fp16/
export AV_RES_DIR=squad/squad2_albert-base-v2_lr2e-5_len512_bs48_ep2_wm814_av_ce_fp16/
python ./examples/run_verifier.py \
    --input_null_files $CLS_RES_DIR/cls_score.json,$AV_RES_DIR/null_odds_5_len512_bs48_ep2_wm814_av_ce_fp16.json \
    --input_nbest_files $AV_RES_DIR/nbest_predictions_5_len512_bs48_ep2_wm814_av_ce_fp16.json \
    --predict_file $SQUAD_DIR/dev-v2.0.json
