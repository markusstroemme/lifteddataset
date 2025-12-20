@global_var_79abe = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_cb06:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_cb4a, label %dec_label_pc_cb40

dec_label_pc_cb40:                                ; preds = %dec_label_pc_cb06
  call void @exit(i32 -1)
  unreachable

dec_label_pc_cb4a:                                ; preds = %dec_label_pc_cb06
  store i8 0, ptr %2, align 1
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_cb72, label %dec_label_pc_cb6d

dec_label_pc_cb6d:                                ; preds = %dec_label_pc_cb4a
  call void @__stack_chk_fail()
  br label %dec_label_pc_cb72

dec_label_pc_cb72:                                ; preds = %dec_label_pc_cb6d, %dec_label_pc_cb4a
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_cbf7:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %dataVoidPtr, i32 100, ptr @global_var_79abe, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %dataVoidPtr)
  %3 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_cc9d, label %dec_label_pc_cc98

dec_label_pc_cc98:                                ; preds = %dec_label_pc_cbf7
  call void @__stack_chk_fail()
  br label %dec_label_pc_cc9d

dec_label_pc_cc9d:                                ; preds = %dec_label_pc_cc98, %dec_label_pc_cbf7
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

