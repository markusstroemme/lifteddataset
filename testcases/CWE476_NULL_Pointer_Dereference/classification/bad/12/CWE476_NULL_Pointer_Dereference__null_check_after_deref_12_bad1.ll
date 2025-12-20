@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_170d9:
  %.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 4)
  %3 = bitcast ptr %2 to ptr
  store i32 5, ptr %3, align 4
  call void @printIntLine(i32 5)
  br i1 %1, label %dec_label_pc_17140, label %dec_label_pc_170f3

dec_label_pc_170f3:                               ; preds = %dec_label_pc_170d9
  %4 = icmp eq ptr %2, null
  br i1 %4, label %dec_label_pc_170f3.dec_label_pc_17131_crit_edge, label %dec_label_pc_17127

dec_label_pc_170f3.dec_label_pc_17131_crit_edge:  ; preds = %dec_label_pc_170f3
  %.pre = load i32, ptr %3, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_17131

dec_label_pc_17127:                               ; preds = %dec_label_pc_170f3
  store i32 10, ptr %3, align 4
  store i32 10, ptr %.reg2mem, align 4
  br label %dec_label_pc_17131

dec_label_pc_17131:                               ; preds = %dec_label_pc_170f3.dec_label_pc_17131_crit_edge, %dec_label_pc_17127
  %.reload = load i32, ptr %.reg2mem, align 4
  call void @printIntLine(i32 %.reload)
  br label %dec_label_pc_17184

dec_label_pc_17140:                               ; preds = %dec_label_pc_170d9
  store i32 10, ptr %3, align 4
  call void @printIntLine(i32 10)
  br label %dec_label_pc_17184

dec_label_pc_17184:                               ; preds = %dec_label_pc_17140, %dec_label_pc_17131
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3d05d:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

