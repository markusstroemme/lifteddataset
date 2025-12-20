@global_var_79ac7 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d15d:
  %0 = call ptr @malloc(i32 50)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_d190, label %dec_label_pc_d186

dec_label_pc_d186:                                ; preds = %dec_label_pc_d15d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d190:                                ; preds = %dec_label_pc_d15d
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  %4 = ptrtoint ptr %0 to i64
  call void @anon1(i64 %4)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_d214:
  %stack_var_-120 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %0, i32 100, ptr @global_var_79ac7, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %0)
  %4 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_d2af, label %dec_label_pc_d2aa

dec_label_pc_d2aa:                                ; preds = %dec_label_pc_d214
  call void @__stack_chk_fail()
  br label %dec_label_pc_d2af

dec_label_pc_d2af:                                ; preds = %dec_label_pc_d2aa, %dec_label_pc_d214
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

