// Inherit the parent event
event_inherited();

if (dodge > 0) {
    // 增加速度：0.2 左右會讓動作在 15 幀（約 0.25 秒）內完成
    dodger += 0.035; 
   
    // 使用 sin 創造出從 0 到 30 再回到 0 的平滑曲線
    x = xstart - round((150 * sin(dodger)));

    if (dodger >= pi) {
        dodge = 0;
        dodger = 0; // 記得歸零，下次觸發才不會直接跳過
        x = xstart; // 強制回歸原點，防止浮點數誤差
    }
}