@global_var_9144d = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_578a4:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_578ec, label %dec_label_pc_578db

dec_label_pc_578db:                               ; preds = %dec_label_pc_578a4
  call void @printLine(ptr @global_var_9144d)
  br label %dec_label_pc_57913

dec_label_pc_578ec:                               ; preds = %dec_label_pc_578a4
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_57913

dec_label_pc_57913:                               ; preds = %dec_label_pc_578ec, %dec_label_pc_578db
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = bitcast ptr %stack_var_-184 to ptr
  %10 = call ptr @strncpy(ptr nonnull %9, ptr nonnull %7, i32 %8)
  call void @printLine(ptr nonnull %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_579ae, label %dec_label_pc_579a9

dec_label_pc_579a9:                               ; preds = %dec_label_pc_57913
  call void @__stack_chk_fail()
  br label %dec_label_pc_579ae

dec_label_pc_579ae:                               ; preds = %dec_label_pc_579a9, %dec_label_pc_57913
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_7a106:
  ret i32 0
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

