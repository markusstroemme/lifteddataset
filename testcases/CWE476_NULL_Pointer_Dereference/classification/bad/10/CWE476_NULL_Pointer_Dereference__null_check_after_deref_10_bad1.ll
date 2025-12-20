@global_var_4a578 = external constant [4 x i8]
@global_var_6d060 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_16e31:
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_6d060, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16e92, label %dec_label_pc_16e47

dec_label_pc_16e47:                               ; preds = %dec_label_pc_16e31
  %2 = call ptr @malloc(i32 4)
  %3 = bitcast ptr %2 to ptr
  store i32 5, ptr %3, align 4
  call void @printIntLine(i32 5)
  %4 = icmp eq ptr %2, null
  br i1 %4, label %dec_label_pc_16e47.dec_label_pc_16e85_crit_edge, label %dec_label_pc_16e7b

dec_label_pc_16e47.dec_label_pc_16e85_crit_edge:  ; preds = %dec_label_pc_16e47
  %.pre = load i32, ptr %3, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_16e85

dec_label_pc_16e7b:                               ; preds = %dec_label_pc_16e47
  store i32 10, ptr %3, align 4
  store i32 10, ptr %.reg2mem, align 4
  br label %dec_label_pc_16e85

dec_label_pc_16e85:                               ; preds = %dec_label_pc_16e47.dec_label_pc_16e85_crit_edge, %dec_label_pc_16e7b
  %.reload = load i32, ptr %.reg2mem, align 4
  call void @printIntLine(i32 %.reload)
  br label %dec_label_pc_16e92

dec_label_pc_16e92:                               ; preds = %dec_label_pc_16e85, %dec_label_pc_16e31
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

