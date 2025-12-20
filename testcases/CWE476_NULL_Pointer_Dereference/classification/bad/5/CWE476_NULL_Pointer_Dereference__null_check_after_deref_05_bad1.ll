@global_var_4a578 = external constant [4 x i8]
@global_var_6d040 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1677e:
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_6d040, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_167df, label %dec_label_pc_16794

dec_label_pc_16794:                               ; preds = %dec_label_pc_1677e
  %2 = call ptr @malloc(i32 4)
  %3 = bitcast ptr %2 to ptr
  store i32 5, ptr %3, align 4
  call void @printIntLine(i32 5)
  %4 = icmp eq ptr %2, null
  br i1 %4, label %dec_label_pc_16794.dec_label_pc_167d2_crit_edge, label %dec_label_pc_167c8

dec_label_pc_16794.dec_label_pc_167d2_crit_edge:  ; preds = %dec_label_pc_16794
  %.pre = load i32, ptr %3, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_167d2

dec_label_pc_167c8:                               ; preds = %dec_label_pc_16794
  store i32 10, ptr %3, align 4
  store i32 10, ptr %.reg2mem, align 4
  br label %dec_label_pc_167d2

dec_label_pc_167d2:                               ; preds = %dec_label_pc_16794.dec_label_pc_167d2_crit_edge, %dec_label_pc_167c8
  %.reload = load i32, ptr %.reg2mem, align 4
  call void @printIntLine(i32 %.reload)
  br label %dec_label_pc_167df

dec_label_pc_167df:                               ; preds = %dec_label_pc_167d2, %dec_label_pc_1677e
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

