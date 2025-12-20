@global_var_79abb = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c8d5:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_c919, label %dec_label_pc_c90f

dec_label_pc_c90f:                                ; preds = %dec_label_pc_c8d5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c919:                                ; preds = %dec_label_pc_c8d5
  store i8 0, ptr %2, align 1
  call void @anon1(ptr nonnull %stack_var_-24)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_c941, label %dec_label_pc_c93c

dec_label_pc_c93c:                                ; preds = %dec_label_pc_c919
  call void @__stack_chk_fail()
  br label %dec_label_pc_c941

dec_label_pc_c941:                                ; preds = %dec_label_pc_c93c, %dec_label_pc_c919
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_c9c6:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %dataPtr to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %2, i32 100, ptr @global_var_79abb, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %2)
  %4 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_ca64, label %dec_label_pc_ca5f

dec_label_pc_ca5f:                                ; preds = %dec_label_pc_c9c6
  call void @__stack_chk_fail()
  br label %dec_label_pc_ca64

dec_label_pc_ca64:                                ; preds = %dec_label_pc_ca5f, %dec_label_pc_c9c6
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

