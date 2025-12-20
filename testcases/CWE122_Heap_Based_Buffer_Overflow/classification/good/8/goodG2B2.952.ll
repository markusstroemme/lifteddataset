define i32 @staticReturnsTrue.92() local_unnamed_addr {
dec_label_pc_9eb1:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_a046:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.92()
  %2 = icmp eq i32 %1, 0
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_a09d, label %dec_label_pc_a077

dec_label_pc_a077:                                ; preds = %dec_label_pc_a046
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_a096, label %dec_label_pc_a08c

dec_label_pc_a08c:                                ; preds = %dec_label_pc_a077
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a096:                                ; preds = %dec_label_pc_a077
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_a09d

dec_label_pc_a09d:                                ; preds = %dec_label_pc_a096, %dec_label_pc_a046
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strcpy(ptr %stack_var_-128.0.reload, ptr nonnull %8)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_a0f7, label %dec_label_pc_a0f2

dec_label_pc_a0f2:                                ; preds = %dec_label_pc_a09d
  call void @__stack_chk_fail()
  br label %dec_label_pc_a0f7

dec_label_pc_a0f7:                                ; preds = %dec_label_pc_a0f2, %dec_label_pc_a09d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

