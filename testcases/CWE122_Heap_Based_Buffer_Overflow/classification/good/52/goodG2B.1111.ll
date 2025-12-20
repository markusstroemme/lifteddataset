@global_var_79aaf = external constant [3 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_c0a0:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_c0d3, label %dec_label_pc_c0c9

dec_label_pc_c0c9:                                ; preds = %dec_label_pc_c0a0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c0d3:                                ; preds = %dec_label_pc_c0a0
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  call void @anon0(ptr %3)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_c11d:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_c1c8:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %data, i32 100, ptr @global_var_79aaf, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %data)
  %3 = bitcast ptr %data to ptr
  call void @free(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_c252, label %dec_label_pc_c24d

dec_label_pc_c24d:                                ; preds = %dec_label_pc_c1c8
  call void @__stack_chk_fail()
  br label %dec_label_pc_c252

dec_label_pc_c252:                                ; preds = %dec_label_pc_c24d, %dec_label_pc_c1c8
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

