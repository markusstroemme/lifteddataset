@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_16f7f:
  %.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16fe4, label %dec_label_pc_16f99

dec_label_pc_16f99:                               ; preds = %dec_label_pc_16f7f
  %2 = call ptr @malloc(i32 4)
  %3 = bitcast ptr %2 to ptr
  store i32 5, ptr %3, align 4
  call void @printIntLine(i32 5)
  %4 = icmp eq ptr %2, null
  br i1 %4, label %dec_label_pc_16f99.dec_label_pc_16fd7_crit_edge, label %dec_label_pc_16fcd

dec_label_pc_16f99.dec_label_pc_16fd7_crit_edge:  ; preds = %dec_label_pc_16f99
  %.pre = load i32, ptr %3, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_16fd7

dec_label_pc_16fcd:                               ; preds = %dec_label_pc_16f99
  store i32 10, ptr %3, align 4
  store i32 10, ptr %.reg2mem, align 4
  br label %dec_label_pc_16fd7

dec_label_pc_16fd7:                               ; preds = %dec_label_pc_16f99.dec_label_pc_16fd7_crit_edge, %dec_label_pc_16fcd
  %.reload = load i32, ptr %.reg2mem, align 4
  call void @printIntLine(i32 %.reload)
  br label %dec_label_pc_16fe4

dec_label_pc_16fe4:                               ; preds = %dec_label_pc_16fd7, %dec_label_pc_16f7f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

