define void @anon0() local_unnamed_addr {
dec_label_pc_d19f:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_d1e3, label %dec_label_pc_d1d9

dec_label_pc_d1d9:                                ; preds = %dec_label_pc_d19f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d1e3:                                ; preds = %dec_label_pc_d19f
  store i8 0, ptr %2, align 1
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_d20b, label %dec_label_pc_d206

dec_label_pc_d206:                                ; preds = %dec_label_pc_d1e3
  call void @__stack_chk_fail()
  br label %dec_label_pc_d20b

dec_label_pc_d20b:                                ; preds = %dec_label_pc_d206, %dec_label_pc_d1e3
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_d290:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strcpy(ptr %dataVoidPtr, ptr nonnull %2)
  call void @printLine(ptr %dataVoidPtr)
  %4 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_d325, label %dec_label_pc_d320

dec_label_pc_d320:                                ; preds = %dec_label_pc_d290
  call void @__stack_chk_fail()
  br label %dec_label_pc_d325

dec_label_pc_d325:                                ; preds = %dec_label_pc_d320, %dec_label_pc_d290
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

