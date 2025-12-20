@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_177b5:
  %.reg2mem = alloca i32, align 4
  %0 = call ptr @malloc(i32 4)
  %1 = bitcast ptr %0 to ptr
  store i32 5, ptr %1, align 4
  call void @printIntLine(i32 5)
  %2 = icmp eq ptr %0, null
  br i1 %2, label %dec_label_pc_177b5.dec_label_pc_17800_crit_edge, label %dec_label_pc_177f6

dec_label_pc_177b5.dec_label_pc_17800_crit_edge:  ; preds = %dec_label_pc_177b5
  %.pre = load i32, ptr %1, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_17800

dec_label_pc_177f6:                               ; preds = %dec_label_pc_177b5
  store i32 10, ptr %1, align 4
  store i32 10, ptr %.reg2mem, align 4
  br label %dec_label_pc_17800

dec_label_pc_17800:                               ; preds = %dec_label_pc_177b5.dec_label_pc_17800_crit_edge, %dec_label_pc_177f6
  %.reload = load i32, ptr %.reg2mem, align 4
  call void @printIntLine(i32 %.reload)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

