@global_var_4a578 = external constant [4 x i8]
@global_var_6d044 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_16a1a:
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_6d044, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_16a7c, label %dec_label_pc_16a31

dec_label_pc_16a31:                               ; preds = %dec_label_pc_16a1a
  %3 = call ptr @malloc(i32 4)
  %4 = bitcast ptr %3 to ptr
  store i32 5, ptr %4, align 4
  call void @printIntLine(i32 5)
  %5 = icmp eq ptr %3, null
  br i1 %5, label %dec_label_pc_16a31.dec_label_pc_16a6f_crit_edge, label %dec_label_pc_16a65

dec_label_pc_16a31.dec_label_pc_16a6f_crit_edge:  ; preds = %dec_label_pc_16a31
  %.pre = load i32, ptr %4, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_16a6f

dec_label_pc_16a65:                               ; preds = %dec_label_pc_16a31
  store i32 10, ptr %4, align 4
  store i32 10, ptr %.reg2mem, align 4
  br label %dec_label_pc_16a6f

dec_label_pc_16a6f:                               ; preds = %dec_label_pc_16a31.dec_label_pc_16a6f_crit_edge, %dec_label_pc_16a65
  %.reload = load i32, ptr %.reg2mem, align 4
  call void @printIntLine(i32 %.reload)
  br label %dec_label_pc_16a7c

dec_label_pc_16a7c:                               ; preds = %dec_label_pc_16a6f, %dec_label_pc_16a1a
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

